using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Taxsopark.Models;

namespace Taxsopark
{
    internal class Helper
    {
        private static TaxsoparkEntities tax_Entities;

        public static TaxsoparkEntities GetContext()
        {
            if (tax_Entities == null)
            {
                tax_Entities = new TaxsoparkEntities();
            }
            return tax_Entities;
        }
    }
}
