using System;
using System.Collections.Generic;
using System.Text;

using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// SetWindowStatusEvent is used to communicate to the 
    /// Shell that the Window Status needs to be changed.
    /// </summary>
    public class SetWindowStatusEvent : CompositePresentationEvent<String>
    {
    }
}
