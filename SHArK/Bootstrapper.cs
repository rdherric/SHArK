using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Media;

using SHArK.Common;
using SHArK.Common.Enums;
using SHArK.Common.Events;
using Microsoft.Practices.Composite.Events;
using Microsoft.Practices.Composite.UnityExtensions;
using Microsoft.Practices.Composite.Modularity;

namespace SHArK
{
    /// <summary>
    /// The Bootstrapper class does the initialization 
    /// of the SHArK application and opens the Shell
    /// Window.
    /// </summary>
    internal class Bootstrapper : UnityBootstrapper
    {
        #region Event Methods
        /// <summary>
        /// ExitExecuted is fired when the ExitEvent 
        /// is fired by the EventAggregator.
        /// </summary>
        public event EventHandler ExitExecuted;


        /// <summary>
        /// OnExitEvent is called when the ExitEvent fires.
        /// </summary>
        /// <param name="action">The Action to be taken on this event</param>
        private void OnExitEvent(ShellAction action)
        {
            //If the Action isn't to Exit, just return
            if (action != ShellAction.Exit)
                return;

            //Fire the event
            if (this.ExitExecuted != null)
                this.ExitExecuted(null, null);
        }
        #endregion


        #region UnityBootstrapper overrides
        /// <summary>
        /// CreateShell creates the Shell Window for 
        /// all of the other modules to show themselves.
        /// </summary>
        /// <returns>The Shell Window</returns>
        protected override DependencyObject CreateShell()
        {
            //Get the EventAggregator and subscribe to the ExitEvent
            IEventAggregator iea = this.Container.Resolve<IEventAggregator>();
            iea.GetEvent<ShellEvent>().Subscribe(this.OnExitEvent);

            //Get the objects required for the Splash Screen
            SplashViewModel splashVM = this.Container.Resolve<SplashViewModel>();
            SplashView splashV = this.Container.Resolve<SplashView>();

            //Setup the SplashView and show it
            splashV.DataContext = splashVM;
            splashV.Show();

            //Get the objects required for the ShellView
            ShellViewModel svm = this.Container.Resolve<ShellViewModel>();
            ShellView sv = this.Container.Resolve<ShellView>();

            //Register the ShellView instance so that the Bootstrapper
            //can get it later on
            this.Container.RegisterInstance<ShellView>(Strings.ShellViewName, sv);

            //Wire up the View and Show it through the Dispatcher
            sv.DataContext = svm;
            sv.Dispatcher.BeginInvoke((Action)delegate
                {
                    sv.Show();
                    splashV.Close();
                    svm.CheckHardwareConfiguration();
                });

            //Return the result
            return sv;
        }


        /// <summary>
        /// GetModuleCatalog returns the list of Modules to 
        /// add to the Shell.  Use the DirectoryModuleCatalog
        /// so that the application scans the directory for
        /// Modules.  
        /// </summary>
        /// <returns></returns>
        protected override IModuleCatalog GetModuleCatalog()
        {
            //Create the DirectoryModuleCatalog
            DirectoryModuleCatalog dmc = new DirectoryModuleCatalog();

            //Set the base path of the directory
            dmc.ModulePath = ".";

            //Return the result
            return dmc;
        }
        #endregion
    }
}
