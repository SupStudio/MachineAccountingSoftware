using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrueCarsInCompany.Mod
{
    public class Route
    {
        public int Id { get; set; }
        public Car Car { get; set; }
        public City CityStart { get; set; }
        public City CityFinish { get; set; }
        public TimeSpan TravelTime { get; set; }
        public double TravelPrice { get; set; }
        public double TravelLength { get; set; }
        public Route(Car car,City cityStart,City cityFinish)
        {
            Car = car; CityStart = cityStart; CityFinish = cityFinish;
            TravelLength = Math.Sqrt(Math.Pow(CityFinish.XCoordinate-CityStart.XCoordinate,2)+Math.Pow(CityFinish.YCoordinate-CityStart.YCoordinate,2));
            TravelPrice = TravelLength/Car.PricePerKilometer;
            TravelTime = new TimeSpan(0,0,((int)TravelLength)/Car.AverageSpeed,0);
            
        }
        public Route()
        {

        }
    }
}
