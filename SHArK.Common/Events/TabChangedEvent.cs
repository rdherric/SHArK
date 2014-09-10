using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SHArK.Common.Tab;
using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// TabClosedEvent is fired when a Tab closes
    /// </summary>
    public class TabChangedEvent : CompositePresentationEvent<ActiveTabInfo>
    {
    }
}
