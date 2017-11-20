using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Quimirespel.Startup))]
namespace Quimirespel
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
