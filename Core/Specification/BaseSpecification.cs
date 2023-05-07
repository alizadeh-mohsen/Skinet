using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Core.Specification
{
    public class BaseSpecification<T> : ISpecification<T>
    {
        public BaseSpecification() { }

        public BaseSpecification(Expression<Func<T, bool>> expression)
        {
            Where = expression;
        }
        public Expression<Func<T, bool>> Where { get; }

        public List<Expression<Func<T, object>>> Includes { get; } = new List<Expression<Func<T, object>>>() { };

        public Expression<Func<T, object>> OrderBy { get; }

        protected void AddInclude(Expression<Func<T, object>> include)
        {
            Includes.Add(include);
        }

    }

}
