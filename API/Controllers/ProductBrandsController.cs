using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductBrandsController : ControllerBase
    {
        private readonly IProductBrandRepository repository;

        public ProductBrandsController(IProductBrandRepository repository)
        {
            this.repository = repository;
        }

        [HttpGet]
        public async Task<ActionResult<IReadOnlyList<ProductBrand>>> GetBrands()
        {
            return Ok(await repository.GetProductBrandsAsync());
        }


    }
}