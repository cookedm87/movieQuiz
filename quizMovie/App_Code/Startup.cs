using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(quizMovie.Startup))]
namespace quizMovie
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
