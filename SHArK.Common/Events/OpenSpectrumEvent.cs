using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// OpenSpectrumEvent is the event class published
    /// when the user wants to open a Spectrum.
    /// </summary>
    public class OpenSpectrumEvent : CompositePresentationEvent<String>
    {
    }
}
