using Core.Entities;
using Core.Specification;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Infrastructure.Services
{
    public class SpecificationEvaluator<TEntity> where TEntity : BaseEntity
    {
        public static IQueryable<TEntity> AddSpecToQuery(IQueryable<TEntity> InputQuery, ISpecification<TEntity> specification)
        {
            var query = InputQuery;

            if (specification.Where != null)
                query = query.Where(specification.Where);

            if (specification.OrderBy != null)
                query = query.OrderBy(specification.OrderBy);

            if (specification.OrderByDescending != null)
                query = query.OrderByDescending(specification.OrderByDescending);

            if (specification.IsPagingEnabled)
                query = query.Skip(specification.Skip).Take(specification.Take);

            query = specification.Includes.Aggregate(query, (current, include) => current.Include(include));

            return query;
        }
    }
}
