using Core.Entities;
using Core.Interfaces;
using Core.Specification;
using Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.Services
{
    public class GenericRepository<T> : IGenericRepository<T> where T : BaseEntity
    {
        private readonly StoreContext context;

        public GenericRepository(StoreContext context)
        {
            this.context = context;
        }

        public async Task<T> GetByIdAsync(int id)
        {
            return await context.Set<T>().FirstAsync(x => x.Id == id);
        }

        public async Task<IReadOnlyList<T>> ListAsync()
        {
            return await context.Set<T>().ToListAsync();
        }

        public async Task<T> GetByIdWithSpecAsync(ISpecification<T> specification)
        {
            return await ApplySpecification(specification).FirstOrDefaultAsync();

        }
        public async Task<IReadOnlyList<T>> ListWithSpecAsync(ISpecification<T> specification)
        {
            return await ApplySpecification(specification).ToListAsync();
        }

        private IQueryable<T> ApplySpecification(ISpecification<T> specification)
        {
            var query = context.Set<T>().AsQueryable();
            return SpecificationEvaluator<T>.AddSpecToQuery(query, specification);
        }
    }
}
