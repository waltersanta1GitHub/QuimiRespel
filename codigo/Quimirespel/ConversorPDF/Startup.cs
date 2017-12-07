using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ConversorPDF.Startup))]
namespace ConversorPDF
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
