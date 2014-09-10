using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// HardwareChangedEvent is fired when the user has invoked
    /// the Hardware Wizard.
    /// </summary>
    public class HardwareChangedEvent : CompositePresentationEvent<Object>
    {
    }
}
