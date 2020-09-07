using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BooksShopOnline.Startup))]
namespace BooksShopOnline
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
