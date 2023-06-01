using System.Web;
using System.Web.Mvc;

namespace Matura_Zadatak_B18
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}