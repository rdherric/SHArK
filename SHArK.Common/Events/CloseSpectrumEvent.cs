using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// CloseSpectrumEvent is fired when a user 
    /// wants to close the Active Spectrum.
    /// </summary>
    public class CloseSpectrumEvent : CompositePresentationEvent<Object>
    {
    }
}
