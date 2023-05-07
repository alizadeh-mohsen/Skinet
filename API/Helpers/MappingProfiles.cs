using API.Dto;
using AutoMapper;
using Core.Entities;

namespace API.Helpers
{
    public class MappingProfiles : Profile
    {
        public MappingProfiles()
        {
            CreateMap<Product, ProductDto>()
                .ForMember(p => p.ProductBrand, a => a.MapFrom(p => p.ProductBrand.Name))
                .ForMember(p => p.ProductType, a => a.MapFrom(p => p.ProductType.Name))
                .ForMember(p => p.PictureUrl, a => a.MapFrom<ProductUrlResolver>());

        }
    }
}
