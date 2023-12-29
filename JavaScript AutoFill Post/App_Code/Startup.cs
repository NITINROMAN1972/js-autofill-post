using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JavaScript_AutoFill_Post.Startup))]
namespace JavaScript_AutoFill_Post
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
