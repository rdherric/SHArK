using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SHArK.Common.Enums
{
    /// <summary>
    /// ShellAction is an enum that determines a 
    /// basic event that doesn't require any more 
    /// complex communication.
    /// </summary>
    public enum ShellAction
    {
        None,
        ConfigureHardware,
        New,
        Open,
        SaveAs,
        About,
        Exit
    }
}
