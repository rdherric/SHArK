using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SHArK.Common.Spectrum;
using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// NewSpectrumEvent is published when the user
    /// decides to acquire a new Spectrum.
    /// </summary>
    public class NewSpectrumEvent : CompositePresentationEvent<NewSpectrumInfo>
    {
    }
}
