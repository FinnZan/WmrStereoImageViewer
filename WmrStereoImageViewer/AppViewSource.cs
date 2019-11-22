using Windows.ApplicationModel.Core;

namespace FinnZan.VR.WmrStereoImageViewer
{
    // The entry point for the app.
    internal class AppViewSource : IFrameworkViewSource
    {
        public IFrameworkView CreateView()
        {
            return new AppView();
        }
    }
}
