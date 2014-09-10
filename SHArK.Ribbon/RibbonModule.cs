using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SHArK.Common;
using Microsoft.Practices.Composite.Regions;
using Microsoft.Practices.Unity;
using Microsoft.Practices.Composite.Modularity;

namespace SHArK.Ribbon
{
    /// <summary>
    /// RibbonModule is the glue class that pulls together
    /// the RibbonView, RibbonViewModel, and the Region in
    /// the Shell that the Ribbon should sit.
    /// </summary>
    [Module(ModuleName="RibbonModule")]
    public class RibbonModule : IModule
    {
        #region Member Variables
        private IUnityContainer _unity = null;
        private IRegionManager _regionMgr = null; 
        #endregion


        #region Constructor
        public RibbonModule(IUnityContainer unity, IRegionManager regionMgr)
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
            //Create the RibbonViewModel and View
            RibbonViewModel rvm = this._unity.Resolve<RibbonViewModel>();
            RibbonView rv = this._unity.Resolve<RibbonView>();

            //Hook up the ViewModel to the View
            rv.DataContext = rvm;

            //Get the Region where the Ribbon is supposed to sit
            IRegion region = this._regionMgr.Regions[Strings.RibbonRegion];

            //Finally, add the View to the Region
            region.Add(rv);
        }
        #endregion
    }
}
