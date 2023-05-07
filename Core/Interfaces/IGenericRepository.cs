using Core.Entities;
using Core.Specification;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Interfaces
{
    public interface IGenericRepository<T> where T : BaseEntity
    {
        Task<T> GetByIdAsync(int id);
        Task<IReadOnlyList<T>> ListAsync();
        Task<T> GetByIdWithSpecAsync(ISpecification<T> specification);
        Task<IReadOnlyList<T>> ListWithSpecAsync(ISpecification<T> specification);
        Task<int> CountAsync(ISpecification<T> spec);
    }
}
