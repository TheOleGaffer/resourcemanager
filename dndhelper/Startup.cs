using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(dndhelper.Startup))]
namespace dndhelper
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
