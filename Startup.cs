using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Baitayonline.Startup))]
namespace Baitayonline
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
