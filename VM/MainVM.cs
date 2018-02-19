using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using TrueCarsInCompany.M;
using TrueCarsInCompany.Mod;

namespace TrueCarsInCompany.VM
{
    class MainVM : DependencyObject
    {
        public MainVM()
        {
            AddInRoutes();
            using (ProgramContext context = new ProgramContext())
            {
                Routes = CollectionViewSource.GetDefaultView(context.Routes.ToList<Route>());
                try
                {
                    Routes = CollectionViewSource.GetDefaultView(context.Routes.ToList<Route>());
                }
                catch
                {
                    Routes = null;
                }
            }
            Routes.Filter = FilterRoute;
        }
        
        public void AddInRoutes()
        {
            using (ProgramContext context = new ProgramContext())
            {
                Car Car = new Car() { CarName = "УАЗ", AverageSpeed = 100, LiftingCapacity = 20, PricePerKilometer = 80 };
                City CityStart = new City() { Name = "Калуга", XCoordinate = 0, YCoordinate = 0 };
                City CityFinish = new City() { Name = "Москва", XCoordinate = 2000, YCoordinate = 4000 };
                Route q = new Route(Car, CityStart, CityFinish);
                context.Routes.Add(q);
                context.SaveChanges();
            }
        }

        public string FilterText
        {
            get { return (string)GetValue(FilterTextProperty); }
            set { SetValue(FilterTextProperty, value); }
        }

        // Using a DependencyProperty as the backing store for FilterText.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty FilterTextProperty =
            DependencyProperty.Register("FilterText", typeof(string), typeof(MainVM), new PropertyMetadata("", FilterText_Changed));

        private static void FilterText_Changed(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            var current = d as MainVM;
            if (current != null)
            {
                current.Routes.Filter = null;
                current.Routes.Filter = current.FilterRoute;
            }
        }

        private bool FilterRoute(object obj)
        {
            Route current = obj as Route;
            if (!string.IsNullOrWhiteSpace(FilterText) && current != null && !current.Car.CarName.Contains(FilterText) && !current.CityStart.Name.Contains(FilterText) && !current.CityFinish.Name.Contains(FilterText))
            {
                return false;
            }
            return true;
        }

        public ICollectionView Routes
        {
            get { return (ICollectionView)GetValue(RoutesProperty); }
            set { SetValue(RoutesProperty, value); }
        }

        // Using a DependencyProperty as the backing store for Routes.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty RoutesProperty =
            DependencyProperty.Register("Routes", typeof(ICollectionView), typeof(MainVM), new PropertyMetadata(null));


        public void Sort()
        {
           var Ro = ((List<Route>)Routes).OrderBy(e => e.Id);
        }


    }
}
