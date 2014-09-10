using System;
using System.Collections.Generic;
using System.Configuration;
using System.Windows;

using Microsoft.Practices.Composite.Events;

namespace SHArK
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        #region Application Overrides
        /// <summary>
        /// OnStartup performs the initialization logic
        /// for the Application.
        /// </summary>
        /// <param name="e"></param>
        protected override void OnStartup(StartupEventArgs e)
        {
            //Let the base class do its work
            base.OnStartup(e);
            
            //Create the Bootstrapper and Run it
            Bootstrapper bs = new Bootstrapper();
            bs.ExitExecuted += new EventHandler(bs_ExitExecuted);
            bs.Run();
        }
        #endregion


        #region Event Handlers
        /// <summary>
        /// bs_ExitExecuted is fired when the ExitEvent
        /// has been fired from the EventAggregator.
        /// </summary>
        /// <param name="sender">Should be null</param>
        /// <param name="e">Should be null</param>
        void bs_ExitExecuted(object sender, EventArgs e)
        {
            //Exit the Application
            this.Shutdown();
        }
        #endregion
    }
}
