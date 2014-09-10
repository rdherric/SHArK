using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SHArK.Common.Enums;
using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// EnumEvent is an Event class that wires up
    /// events that need to go to the Shell.
    /// </summary>
    public class ShellEvent : CompositePresentationEvent<ShellAction>
    {
    }
}
