using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// The PrintSpectrumEvent class is used to notify
    /// the Spectrum that it should be printed.
    /// </summary>
    public class PrintSpectrumEvent : CompositePresentationEvent<Object>
    {
    }
}
