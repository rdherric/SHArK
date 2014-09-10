using System;
using System.Collections.Generic;
using System.Text;

using SHArK.Common.Spectrum;
using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// SpectrumZoomedEvent is fired when the user
    /// zooms in on a Spectrum.
    /// </summary>
    public class SpectrumChangedEvent : CompositePresentationEvent<ActiveSpectrumInfo>
    {
    }
}
