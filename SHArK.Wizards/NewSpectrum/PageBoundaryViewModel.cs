using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Input;
using Microsoft.Practices.Composite.Events;

using RDH2.SHArK.Interface;
using RDH2.SHArK.Interface.Enums;
using RDH2.Windows.Controls;
using SHArK.Common;
using SHArK.Common.Events;
using SHArK.Common.Spectrum;

namespace SHArK.Wizards.NewSpectrum
{
    /// <summary>
    /// PageBoundaryViewModel is the backing class
    /// for the PageBoundaryView.
    /// </summary>
    internal class PageBoundaryViewModel : NewSpectrumPageViewModelBase
    {
        #region Member Variables
        private IEventAggregator _eventAggregator = null;
        private Int32 _xExtent = 0;
        private Int32 _yExtent = 0;

        //IMirror interface to move the motors
        IMirror _mirror = null;
        #endregion


        #region Constructor
        /// <summary>
        /// Default constructor for the PageBoundaryViewModel object.
        /// </summary>
        /// <param name="eventAggregator">The EventAggregator to inject</param>
        public PageBoundaryViewModel(IEventAggregator eventAggregator)
        {
            //Save the input in the member variables
            this._eventAggregator = eventAggregator;
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// MirrorStep determines the step by which the Mirror
        /// should move.  It affects the Step when setting the
        /// initial and final positions as well as the Rows and
        /// Columns values.
        /// </summary>
        public Int32 MirrorStep
        {
            get { return this.NewSpectrumInfo.StepSize; }
            set
            {
                //Set the value and fire the event
                this.NewSpectrumInfo.StepSize = value;
                this.FirePropertyChanged("MirrorStep");

                //Redo the Row and Column calcs with the current
                //values of the extents and step
                this.Columns = this.CalculateBoundarySteps(this._xExtent);
                this.Rows = this.CalculateBoundarySteps(this._yExtent);
            }
        }


        /// <summary>
        /// Rows determines the number of rows that a Spectrum
        /// will contain.
        /// </summary>
        public Int32 Rows
        {
            get { return this.NewSpectrumInfo.Rows; }
            set
            {
                //Set the value and fire the event
                this.NewSpectrumInfo.Rows = value;
                this.FirePropertyChanged("Rows");
                this.FirePropertyChanged("NextEnabled");
            }
        }


        /// <summary>
        /// Columns determines the number of columns that a Spectrum
        /// will contain.
        /// </summary>
        public Int32 Columns
        {
            get { return this.NewSpectrumInfo.Columns; }
            set
            {
                //Set the value and fire the event
                this.NewSpectrumInfo.Columns = value;
                this.FirePropertyChanged("Columns");
                this.FirePropertyChanged("NextEnabled");
            }
        }


        /// <summary>
        /// NextEnabled determines if the Next button is Enabled.
        /// </summary>
        public Boolean NextEnabled
        {
            get { return ((this.NewSpectrumInfo.Rows > 0) && (this.NewSpectrumInfo.Columns > 0)); }
        }
        #endregion


        #region Event Handlers
        /// <summary>
        /// HookEvents hooks the events of the View to the 
        /// Methods of the ViewModel.
        /// </summary>
        /// <param name="view">The View to hook events</param>
        public void HookEvents(PageBoundaryView view)
        {
            //Hook the events
            view.Selected += new RoutedEventHandler(view_Selected);
            view.Unselected += new RoutedEventHandler(view_Unselected);
            view.initialPosUD.ButtonClicked += new UpDown2DButtonClickEventHandler(initialPosUD_ButtonClicked);
            view.finalPosUD.ButtonClicked += new UpDown2DButtonClickEventHandler(finalPosUD_ButtonClicked);
        }


        /// <summary>
        /// view_Selected generates the IMirror interface so 
        /// that the user can move the mirrors.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void view_Selected(object sender, RoutedEventArgs e)
        {
            //Create the IMirror interface
            if (this._mirror == null)
                this._mirror = SHArKClassFactory.CreateIMirror();
        }


        /// <summary>
        /// view_Unselected cleans up the IMirror interface.
        /// </summary>
        /// <param name="sender">The View that is being Unselected</param>
        /// <param name="e">The EventArgs sent by the System</param>
        void view_Unselected(object sender, RoutedEventArgs e)
        {
            //Clean up the IMirror if it was created
            if (this._mirror != null)
            {
                this._mirror.Dispose();
                this._mirror = null;
            }
        }


        /// <summary>
        /// initialPosUD_ButtonClicked is called when the user
        /// clicks a button to move the Laser to the initial
        /// position. 
        /// </summary>
        /// <param name="sender">The UpDown2D control that was clicked</param>
        /// <param name="e">The EventArgs sent by the System</param>
        void initialPosUD_ButtonClicked(object sender, UpDown2DButtonClickEventArgs e)
        {
            //Handle the event
            this.HandleUpDownClickEvent(UpDownType.Initial, e.ButtonType, Convert.ToInt32(e.Step));
        }


        /// <summary>
        /// finalPosUD_ButtonClicked is called when the user 
        /// clicks a button to move the Laser to the final 
        /// position.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void finalPosUD_ButtonClicked(object sender, UpDown2DButtonClickEventArgs e)
        {
            //Handle the event
            this.HandleUpDownClickEvent(UpDownType.Final, e.ButtonType, Convert.ToInt32(e.Step));
        }


        /// <summary>
        /// HandleUpDownClickEvent does the work of figuring out
        /// if the extents are valid and moving the mirror.
        /// </summary>
        /// <param name="udType">The Type of UpDown2D Control that was clicked</param>
        /// <param name="buttonType">The Type of the Button that was clicked</param>
        /// <param name="step">The size of the step that should be applied</param>
        private void HandleUpDownClickEvent(UpDownType udType, UpDown2D.ButtonType buttonType, Int32 stepMagnitude)
        {
            //Calculate the direction the mirror needs to move
            Int32 mirrorStep = this.CalculateMirrorStepDirection(buttonType, stepMagnitude);

            //Calculate the way the extent will change
            Int32 extentStep = this.CalcuateNewExtentStepDirection(udType, buttonType, stepMagnitude);

            //Create variables to hold the current Extent values
            Int32 currXExtent = this._xExtent;
            Int32 currYExtent = this._yExtent;

            //If this is an X-Axis move, calculate the new X-Extent
            if (buttonType == UpDown2D.ButtonType.Left || buttonType == UpDown2D.ButtonType.Right)
                currXExtent += extentStep;

            //If this is a Y-Axis move, calculate the new Y-Extent
            else if (buttonType == UpDown2D.ButtonType.Up || buttonType == UpDown2D.ButtonType.Down)
                currYExtent += extentStep;

            //Recalculate the Rows and Columns and move the 
            //Mirror if they are valid.  Otherwise, show a message 
            //that says that the laser will be out of bounds
            if (this.CheckNewExtentValues(udType, currXExtent, currYExtent) == true)
            {
                //Move the Mirror and save the new values if
                //that occurs successfully
                if (this.MoveMirror(buttonType, mirrorStep) == true)
                {
                    //Save the new values if necessary
                    this.SetNewExtents(udType, currXExtent, currYExtent);

                    //Set the new Row and Column values 
                    //in the NewSpectrumInfo object and UI
                    this.SetNewRowColumnValues(udType);
                }
            }
            else
                this._eventAggregator.GetEvent<ErrorMessageEvent>().Publish(Strings.OutsideBoundary);
        }
        #endregion


        #region Helper Methods
        /// <summary>
        /// CalculateMirrorStepDirection figures out how the 
        /// Motors should move based on the button that was 
        /// clicked.
        /// </summary>
        /// <param name="buttonType">The Type of Button on the UpDown2D control that was clicked</param>
        /// <param name="stepMagnitude">The magnitude of the step to make</param>
        /// <returns>The value of the step for the mirror to make</returns>
        private Int32 CalculateMirrorStepDirection(UpDown2D.ButtonType buttonType, Int32 stepMagnitude)
        {
            //Declare a variable to return -- default to the
            //input value
            Int32 rtn = stepMagnitude;

            //Invert the Step if the button press Left or Up
            if (buttonType == UpDown2D.ButtonType.Left || buttonType == UpDown2D.ButtonType.Up)
                rtn *= -1;

            //Return the result
            return rtn;
        }


        /// <summary>
        /// CalculateStepDirection determines how the step should be
        /// calculated based on the UpDown control clicked.
        /// </summary>
        /// <param name="udType">The Type of the UpDown2D clicked</param>
        /// <param name="buttonType">The Type of the button clicked</param>
        /// <param name="step">The magnitude of the step</param>
        /// <returns></returns>
        private Int32 CalcuateNewExtentStepDirection(UpDownType udType, UpDown2D.ButtonType buttonType, Int32 step)
        {
            //Declare a variable to return -- default
            //to input value
            Int32 rtn = step;

            //Invert the Step if the button press was Right or Down
            //on Initial UpDown2D or Left or Up on Final UpDown2D --
            //the square is getting smaller
            if ((udType == UpDownType.Initial && (buttonType == UpDown2D.ButtonType.Right || buttonType == UpDown2D.ButtonType.Down)) ||
                (udType == UpDownType.Final && (buttonType == UpDown2D.ButtonType.Left || buttonType == UpDown2D.ButtonType.Up)))
                rtn *= -1;

            //Return the result
            return rtn;
        }


        /// <summary>
        /// CheckNewExtentValues determines if the extents 
        /// that would result based on the current Extents 
        /// of the Boundary are valid.  
        /// </summary>
        /// <param name="udType">The Type of UpDown2D control that was clicked</param>
        /// <param name="xExtent">The current XExtent of the Boundary</param>
        /// <param name="yExtent">The current YExtent of the Boundary</param>
        /// <returns>Boolean TRUE if the values are valid, FALSE otherwise</returns>
        private Boolean CheckNewExtentValues(UpDownType udType, Int32 xExtent, Int32 yExtent)
        {
            //Declare a variable to return
            Boolean rtn = true;

            //Determine the validity of the bounds -- if the new values
            //would be negative, the bounds are invalid
            if ((udType == UpDownType.Initial && ((xExtent < 0 && this._xExtent > 0) || (yExtent < 0 && this._yExtent > 0))) ||
                (udType == UpDownType.Final && (xExtent < 0 || yExtent < 0)))
                rtn = false;

            //Return the result
            return rtn;
        }


        /// <summary>
        /// MoveMirror moves the specified mirror by the input
        /// amount of steps.
        /// </summary>
        /// <param name="type">The Type of Button that was clicked</param>
        /// <param name="step">The amount that the Mirror should be moved</param>
        /// <returns>Boolean TRUE if the mirror was moved, FALSE otherwise</returns>
        private Boolean MoveMirror(UpDown2D.ButtonType type, Int32 step)
        {
            //Declare a variable to return
            Boolean rtn = false;

            //Set the cursor appropriately
            Mouse.OverrideCursor = Cursors.Wait;

            //If the mirror still isn't created, show an error.
            //Otherwise, move the mirror.
            if (this._mirror == null)
                this._eventAggregator.GetEvent<ErrorMessageEvent>().Publish(Strings.HardwareNotDetected);
            else
            {
                //Save the SecondsPerStep value in the NewSpectrumInfo
                this.NewSpectrumInfo.SecondsPerStep = this._mirror.SecondsPerStep;

                //Translate the ButtonType into a MirrorAxis
                MirrorAxis axis = MirrorAxis.X;

                if (type == UpDown2D.ButtonType.Up || type == UpDown2D.ButtonType.Down)
                    axis = MirrorAxis.Y;

                //Try to move the mirror
                try
                {
                    //Call the Move Method
                    this._mirror.Move(axis, step);

                    //Set the return value to True to indicate success
                    rtn = true;
                }
                catch (System.Exception e)
                {
                    MessageBox.Show(e.Message, Strings.Error, MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }

            //Reset the Cursor
            Mouse.OverrideCursor = Cursors.Arrow;

            //Return the result
            return rtn;
        }


        /// <summary>
        /// SetNewExtents sets the new values of the Boundary
        /// Extents based on the Type of UpDown2D control that
        /// was clicked and the values of the current extents.
        /// </summary>
        /// <param name="udType">The Type of the UpDown2D control that was clicked</param>
        /// <param name="xExtent">The new XExtent possibly to set</param>
        /// <param name="yExtent">The new YExtent possibly to set</param>
        private void SetNewExtents(UpDownType udType, Int32 xExtent, Int32 yExtent)
        {
            if (udType == UpDownType.Final || 
                (udType == UpDownType.Initial && this._xExtent > 0))
                this._xExtent = xExtent;

            if (udType == UpDownType.Final ||
                (udType == UpDownType.Initial && this._yExtent > 0))
                this._yExtent = yExtent;
        }


        /// <summary>
        /// SetNewRowColumnValues calculates the number of 
        /// Rows and Columns based on the type of UpDown2D
        /// control that was clicked and the current extents.
        /// </summary>
        /// <param name="udType">The Type of the UpDown2D control that was clicked</param>
        private void SetNewRowColumnValues(UpDownType udType)
        {
            if (udType == UpDownType.Final ||
                (udType == UpDownType.Initial && this._xExtent > 0))
                this.Columns = this.CalculateBoundarySteps(this._xExtent);

            if (udType == UpDownType.Final ||
                (udType == UpDownType.Initial && this._xExtent > 0))
                this.Rows = this.CalculateBoundarySteps(this._yExtent);
        }


        /// <summary>
        /// CalculateBoundarySteps takes the extent of the Boundary
        /// and changes it into a number of steps for a Spectrum.
        /// </summary>
        /// <param name="extent">The Extent of the Boundary</param>
        /// <returns>The integer number of steps in the extent</returns>
        private Int32 CalculateBoundarySteps(Int32 extent)
        {
            //Return the result
            return Convert.ToInt32(extent / this.NewSpectrumInfo.StepSize);
        }
        #endregion


        #region Private enum to determine which UpDown2D was clicked
        /// <summary>
        /// UpDownType is used to communicate which UpDown2D control
        /// has been clicked so that the rest of the operation can 
        /// occur successfully.
        /// </summary>
        private enum UpDownType
        {
            Initial,
            Final
        }
        #endregion
    }
}
