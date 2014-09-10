using System;
using System.Collections.Generic;
using System.Text;

namespace SHArK.Common.Enums
{
    /// <summary>
    /// AcquisitionAction determines the type of action
    /// to take to modify the currently running Spectrum.
    /// </summary>
    public enum AcquisitionAction
    {
        None = -1,
        Run,
        Pause,
        Restart,
        Stop
    }
}
