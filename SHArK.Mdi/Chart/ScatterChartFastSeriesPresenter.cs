using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Media;

using Syncfusion.Windows.Chart;

namespace SHArK.Mdi.Chart
{
    /// <summary>
    /// ChartFastSeriesPresenter is used to create the 
    /// actual chart with all of the data in it.  It 
    /// derives from a Syncfusion class to do the Render.
    /// </summary>
    internal class ScatterChartFastSeriesPresenter : ChartFastSeriesPresenter
    {
        #region Dependency Properties
        public static readonly DependencyProperty PointsProperty = DependencyProperty.Register(
            "Points", typeof(PointCollection), typeof(ScatterChartFastSeriesPresenter), 
            new FrameworkPropertyMetadata(null, FrameworkPropertyMetadataOptions.AffectsRender));

        public static readonly DependencyProperty SeriesProperty = DependencyProperty.Register(
            "Series", typeof(ChartSeries), typeof(ScatterChartFastSeriesPresenter), 
            new FrameworkPropertyMetadata(null, FrameworkPropertyMetadataOptions.AffectsRender));
        #endregion


        #region Public Properties
        /// <summary>
        /// Points determines the actual PointCollection 
        /// that will be rendered on the Chart.
        /// </summary>
        public PointCollection Points
        {
            get { return (PointCollection)this.GetValue(ScatterChartFastSeriesPresenter.PointsProperty); }
            set { this.SetValue(ScatterChartFastSeriesPresenter.PointsProperty, value); }
        }


        /// <summary>
        /// Series determines the present Chart series 
        /// that is being rendered.
        /// </summary>
        public ChartSeries Series
        {
            get { return (ChartSeries)this.GetValue(ScatterChartFastSeriesPresenter.SeriesProperty); }
            set { this.SetValue(ScatterChartFastSeriesPresenter.SeriesProperty, value); }
        }
        #endregion


        #region OnRender Override
        /// <summary>
        /// OnRender does the work of rendering the Chart
        /// to the screen.
        /// </summary>
        /// <param name="drawingContext">The DrawingContext on which to draw</param>
        protected override void OnRender(DrawingContext drawingContext)
        {
            //Add the Points if they haven't been added yet
            if (this.Points != null && this.Series != null)
            {
                //Clear the VisualCollection
                base.VisualCollection.Clear();

                //Calculate the number of pixels per Point to render --
                //size of chart side / total number of Points inclusive
                Double xPixels = (this.ActualWidth / (this.Series.XAxis.VisibleRange.Delta + 1));
                Double yPixels = (this.ActualHeight / (this.Series.YAxis.VisibleRange.Delta + 1));

                //Get the visible, unrendered data from the Series
                List<ChartPoint> points = this.GetDataToRender();

                //Iterate through the Points and add them to the Chart
                foreach (ChartPoint cp in points)
                {
                    //Create a new ChartPoint to do the Rendering
                    ChartPoint newCP = new ChartPoint(
                        new SHArK.IO.Data.Point(cp.X, cp.Y, cp.Z), cp.MaxZ);

                    //Create a Point in ChartArea Coordinates
                    Point areaPoint = new Point(
                        this.Series.Area.ValueToPoint(this.Series.XAxis, cp.X),
                        this.Series.Area.ValueToPoint(this.Series.YAxis, cp.Y));

                    //Translate the Point to Presenter Coordinates
                    Point presenterPoint = this.Series.Area.TranslatePoint(areaPoint, this);

                    //Center the Rectangle on the Point
                    presenterPoint.X -= ((xPixels + 1) / 2);
                    presenterPoint.Y -= ((yPixels + 1) / 2);

                    //Open the DrawingContext and render the Point
                    using (DrawingContext context = newCP.RenderOpen())
                    {
                        //Render the Point with the Brush calculated from 
                        //the Z-Axis value and a Rect centered on the position
                        //of the point and sized to overlap slightly
                        context.DrawRectangle(this.CreateZValueBrush(cp.Z, cp.MaxZ), null,
                            new Rect(presenterPoint.X, presenterPoint.Y, xPixels + 1, yPixels + 1));
                    }

                    //Add the ChartPoint to the VisualCollection
                    base.VisualCollection.Add(newCP);
                }
            }

            //Finally, let the base class do its thing
            base.OnRender(drawingContext);
        }
        #endregion


        #region Method to retrieve the applicable data
        /// <summary>
        /// GetDataToRender iterates through the data and pulls 
        /// only the ChartPoints that will be visible on the 
        /// Chart based on the Zooming.
        /// </summary>
        /// <returns>List of ChartPoints that should be visible</returns>
        private List<ChartPoint> GetDataToRender()
        {
            //Declare a variable to return
            List<ChartPoint> rtn = new List<ChartPoint>();

            //Get the Min and Max of the Axes -- add 1 to each
            //of the values so that the data is slightly bigger
            //than the rendered area
            Double xMin = this.Series.XAxis.VisibleRange.Start - 1;
            Double xMax = this.Series.XAxis.VisibleRange.End + 1;
            Double yMin = this.Series.YAxis.VisibleRange.Start - 1;
            Double yMax = this.Series.YAxis.VisibleRange.End + 1;

            //Iterate through the Data and save the ChartPoints
            //that are within the Ranges
            for (Int32 i = 0; i < this.Series.Data.Count; i++)
            {
                //Get the ChartPoint from the Data
                ChartPoint cp = this.Series.Data[i].Item as ChartPoint;

                //If the data matches and the ChartPoint hasn't
                //been rendered, put it in the List
                if ((cp.X >= xMin && cp.X <= xMax) &&
                    (cp.Y >= yMin && cp.Y <= yMax))
                    rtn.Add(cp);
            }

            //Return the result
            return rtn;
        }
        #endregion


        #region Color Conversion Method
        /// <summary>
        /// CreateZValueBrush is used to convert a photocurrent
        /// to a colored Brush to fill the point on the screen.
        /// </summary>
        /// <param name="zValue"></param>
        /// <param name="maxZValue"></param>
        /// <returns></returns>
        private Brush CreateZValueBrush(Double zValue, Double maxZValue)
        {
            //Coerce the zValue if necessary
            if (Math.Abs(zValue) > Math.Abs(maxZValue))
                zValue = maxZValue;

            //Calculate the number of gradients of Color.  This should
            //be between 0 and 510 -- two ranges of color.
            Double step = maxZValue / 510;

            //Calculate the magnitude of the color based on the 
            //Step size and the value of the photocurrent
            Int32 magnitude = 0;
            if (Math.Abs(step) > 0.0)
                magnitude = Math.Abs(System.Convert.ToInt32(zValue / step));

            //Declare variables to hold the color values -- default
            //to black
            Byte R = 0;
            Byte G = 0;
            Byte B = 0;

            //If the current point is positive, then the color should range
            //from Black to Green to Blue.  Otherwise, the color
            //should range from Black to Yellow to Red.
            if (zValue > 0)
            {
                //If the magnitude is < 256, set the color just to Green.
                //Otherwise, set the color to a mix of Green and Blue.
                if (magnitude < 256)
                    G = System.Convert.ToByte(magnitude);
                else
                {
                    G = System.Convert.ToByte(510 - magnitude);
                    B = System.Convert.ToByte(magnitude - 255);
                }
            }
            else if (zValue < 0)
            {
                //If the magnitude is < 256, set the color just to Yellow.
                //Otherwise, set the color to a mix of Yellow and Red.
                if (magnitude < 256)
                {
                    R = System.Convert.ToByte(magnitude);
                    G = System.Convert.ToByte(magnitude);
                }
                else
                {
                    R = 255;
                    G = System.Convert.ToByte(510 - magnitude);
                }
            }

            //Return the result as a Brush
            return new SolidColorBrush(Color.FromRgb(R, G, B));
        }
        #endregion
    }
}
