using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SHArK.Common;
using Syncfusion.Windows.Tools.Controls;
using Microsoft.Practices.Composite.Modularity;
using Microsoft.Practices.Composite.Regions;
using Microsoft.Practices.Unity;

namespace SHArK.Mdi
{
    /// <summary>
    /// MdiHostModule is the glue class that ties together 
    /// the TabHost View, Tab View, Shell Window, and the 
    /// associated ViewModels.
    /// </summary>
    public class MdiModule : IModule
    {
        #region Member Variables
        IUnityContainer _unity = null;
        IRegionManager _regionMgr = null;
        #endregion


        #region Constructor
        public MdiModule(IUnityContainer unity, IRegionManager regionMgr)
        {
            //Save the input in the member variables
            this._unity = unity;
            this._regionMgr = regionMgr;
        }
        #endregion


        #region IModule Members
        /// <summary>
        /// Initialize is called when the Ribbon Module
        /// is first created.
        /// </summary>
        public void Initialize()
        {
            //Create the TabHost ViewModel and View
            TabHostViewModel thvm = this._unity.Resolve<TabHostViewModel>();
            TabHostView thv = this._unity.Resolve<TabHostView>();

            //Register the View so that the ViewModel can get
            //a reference to it
            this._unity.RegisterInstance<TabHostView>(Strings.TabHostViewName, thv);

            //Hook up the ViewModel to the View
            thvm.HookEvents(thv);
            thv.DataContext = thvm;
            
            //Get the Region where the Ribbon is supposed to sit
            IRegion region = this._regionMgr.Regions[Strings.MdiRegion];

            //Finally, add the View to the Region
            region.Add(thv);
        }
        #endregion
    }
}
