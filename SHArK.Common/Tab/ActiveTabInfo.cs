using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SHArK.Common.Tab
{
    /// <summary>
    /// ActiveTabInfo publishes all of the salient 
    /// information about a Tab when it is 
    /// opened or activated.
    /// </summary>
    public class ActiveTabInfo
    {
        /// <summary>
        /// DocumentName determines the name of the Active Tab.
        /// </summary>
        public String DocumentName = String.Empty;


        /// <summary>
        /// TabsOpen determines the total number of 
        /// Tabs that are currently open.
        /// </summary>
        public Int32 TabsOpen = 0;
    }
}
