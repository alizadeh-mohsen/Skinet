using API.Dto;
using API.Helpers;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Core.Specification;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductsController : ControllerBase
    {
        private readonly IGenericRepository<Product> repository;
        private readonly IMapper mapper;

        public ProductsController(IGenericRepository<Product> repository, IMapper mapper)
        {
            this.repository = repository;
            this.mapper = mapper;
        }

        [HttpGet]
        public async Task<ActionResult<IReadOnlyList<ProductDto>>> GetProducts(
            [FromQuery] ProductSpecParams productParams)
        {
            var spec = new ProductsWithTypesAndBrandsSpecification(productParams);
            var countSpec = new ProductsWithFiltersForCountSpecification(productParams);
            var totalItems = await repository.CountAsync(countSpec);
            var products = await repository.ListWithSpecAsync(spec);
            var productDtos = mapper.Map<IReadOnlyList<ProductDto>>(products);
            return Ok(new Pagination<ProductDto>(productParams.PageIndex,
                productParams.PageSize, totalItems, productDtos));
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<ProductDto>> GetProduct(int id)
        {
            var spec = new ProductsWithTypesAndBrandsSpecification(id);
            var product = await repository.GetByIdWithSpecAsync(spec);
            var productDto = mapper.Map<ProductDto>(product);
            return Ok(productDto);

        }
    }
}