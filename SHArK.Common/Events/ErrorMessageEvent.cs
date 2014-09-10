using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Microsoft.Practices.Composite.Presentation.Events;

namespace SHArK.Common.Events
{
    /// <summary>
    /// ErrorMessageEvent encapsulates an error that 
    /// occurred in the application that requires a 
    /// Message Box to be shown.
    /// </summary>
    public class ErrorMessageEvent : CompositePresentationEvent<String>
    {
    }
}
