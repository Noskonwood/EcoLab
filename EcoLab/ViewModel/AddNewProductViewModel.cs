using EcoLab.Model;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Windows;
using System.Windows.Input;

namespace EcoLab.ViewModel
{
    /// <summary>
    /// This class contains properties that a View can data bind to.
    /// <para>
    /// See http://www.galasoft.ch/mvvm
    /// </para>
    /// </summary>
    public class AddNewProductViewModel : ViewModelBase
    {
        private Product _newProduct = new Product();
        public Product NewProduct
        {
            get
            {
                _newProduct.Date = DateTime.Now;
                return _newProduct;
            }
            set
            {
                _newProduct = value;
                RaisePropertyChanged();
            }
        }

        /// <summary>
        /// Initializes a new instance of the AddNewProduct class.
        /// </summary>
        public AddNewProductViewModel()
        {

        }

        public ICommand AddClickCommand
        {
            get
            {
                return new RelayCommand<Window>((wnd) =>
                {
                    using (var db = new EcoLabEntities())
                    {
                        try
                        {
                            db.Product.Add(NewProduct);
                            db.SaveChanges();

                            wnd.Close();
                        }
                        catch (Exception exc)
                        {
                            MessageBox.Show(exc.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        }

                        
                    }
                });
            }
        }
    }
}