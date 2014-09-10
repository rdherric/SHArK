using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// SaveSpectrumAsEvent is used to notify subscribers
    /// that the user wants to save the current Spectrum
    /// as a different format.
    /// </summary>
    public class SaveSpectrumAsEvent : CompositePresentationEvent<String>
    {
    }
}
