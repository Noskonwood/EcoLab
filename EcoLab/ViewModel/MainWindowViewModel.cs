using EcoLab.Helpers;
using EcoLab.Model;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;

namespace EcoLab.ViewModel
{
    public class MainWindowViewModel : ViewModelBase
    {
        public MainWindowViewModel()
        {

        }

        private int _selectedCategory = 0;

        //стандартная конструкция для MVVM
        private ObservableCollection<Product> _products = new ObservableCollection<Product>();
        private ObservableCollection<Workman> _workmans = new ObservableCollection<Workman>();
        private List<Category> _categories = new List<Category>();

        public List<BirthMonth> Monthes
        {
            get
            {
                using (var db = new Model.EcoLabEntities())
                {
                    return db.BirthMonth.ToList();
                }
            }
        }

        public List<BirthDay> Days
        {
            get
            {
                using (var db = new Model.EcoLabEntities())
                {
                    return db.BirthDay.ToList();
                }
            }
        }

        public List<BirthYear> Years
        {
            get
            {
                using (var db = new Model.EcoLabEntities())
                {
                    return db.BirthYear.ToList();
                }
            }
        }

        public List<Position> Positions
        {
            get
            {
                using (var db = new Model.EcoLabEntities())
                {
                    return db.Position.ToList();
                }
            }
        }
        public List<MaritalStatus> MaritalStatuses
        {
            get
            {
                using (var db = new Model.EcoLabEntities())
                {
                    return db.MaritalStatus.ToList();
                }
            }
        }

        public List<Category> Categories
        {
            get
            {
                using (var db = new Model.EcoLabEntities())
                {
                    return db.Category.ToList();
                }
            }
        }

        public List<Brand> Brands
        {
            get
            {
                using (var db = new Model.EcoLabEntities())
                {
                    return db.Brand.ToList();
                }
            }
        }

        public List<QuantityUnit> Quantities
        {
            get
            {
                using (var db = new Model.EcoLabEntities())
                {
                    return db.QuantityUnit.ToList();
                }
            }
        }
        public List<Sex> Sexes
        {
            get
            {
                using (var db = new Model.EcoLabEntities())
                {
                    return db.Sex.ToList();
                }
            }
        }

        public ObservableCollection<Product> Products
        {
            get
            {
                return _products;
            }
            set
            {
                //TODO сделать SequenceEqual
                _products = value;
                //оповещаем VIEW об изменении 
                RaisePropertyChanged();
            }
        }
        

        public int SelectedCategory
        {
            get
            {
                return _selectedCategory;
            }
            set
            {
                if(_selectedCategory == value)
                {
                    return;
                }
                _selectedCategory = value;
                if(_selectedCategory == 1)
                {
                    GetWorkmans();
                }

                RaisePropertyChanged();
            }
        }


        public ICommand closeCommand
        {
            get
            {
                return new BaseCommand(Close);
            }
        }
        private void Close()
        {
            Application.Current.Shutdown();
        }


        private string _categoryName = string.Empty;
        public ICommand CategoryButtonClickCommand
        {
            get
            {
                // это называется Лямбда-выражение
                return new BaseCommand<string>((categoryName) =>
                {
                    SelectedCategory = 0;
                    
                    if(string.IsNullOrEmpty(categoryName))
                    {
                        return;
                    }
                    _categoryName = categoryName;

                    using (var db = new EcoLabEntities())
                    {
                        var query = from p in db.Product
                                    where p.Category.Name == categoryName
                                    select p;

                        if (query.Any())
                        {
                            Products = new ObservableCollection<Product>(query);
                        }
                        else
                        {
                            Products = new ObservableCollection<Product>();
                        }
                    }
                });
            }
        }
        public ICommand SaveProductChanges
        {
            get
            {
                // это называется Лямбда-выражение
                return new BaseCommand<Product>((product) =>
                {
                    using (var db = new EcoLabEntities())
                    {
                        var dbProduct = db.Product.Where(x => x.Id == product.Id).FirstOrDefault();
                        if (dbProduct != null)
                        {
                            dbProduct.Name = product.Name;
                            dbProduct.Quantity = product.Quantity;
                            dbProduct.QuantityId = product.QuantityId;
                            dbProduct.Features = product.Features;
                            dbProduct.Date = product.Date;
                            dbProduct.Cena = product.Cena;
                            dbProduct.CategoryId = product.CategoryId;
                            dbProduct.BrandId = product.BrandId;
                        }
                        db.SaveChanges();
                    }
                });
            }
        }

        public ICommand SaveWorkmanChanges
        {
            get
            {
                // это называется Лямбда-выражение
                return new BaseCommand<Workman>((workman) =>
                {
                    using (var db = new EcoLabEntities())
                    {
                        var dbWorkman = db.Workman.Where(x => x.Id == workman.Id).FirstOrDefault();
                        if (dbWorkman != null)
                        {
                            dbWorkman.Name = workman.Name;
                            dbWorkman.Surname = workman.Surname;
                            dbWorkman.SexId = workman.SexId;
                        }
                        db.SaveChanges();
                    }
                });
            }
        }

        public ICommand DeleteProductButtonClick
        {
            get
            {
                // это называется Лямбда-выражение
                return new BaseCommand<object>((product) =>
                {
                    //нет выделеных строк
                    if (product as Product == null)
                    {
                        return;
                    }
                    var productToDel = product as Product;

                    using (var db = new EcoLabEntities())
                    {
                        bool oldValidateOnSaveEnabled = db.Configuration.ValidateOnSaveEnabled;

                        try
                        {
                            db.Configuration.ValidateOnSaveEnabled = false;

                            var p = new Product { Id = productToDel.Id };

                            db.Product.Attach(p);
                            db.Entry(p).State = EntityState.Deleted;
                            db.SaveChanges();
                            Products.Remove(productToDel);
                        }
                        catch
                        {
                            //TODO код обработки ошибки
                        }
                        finally
                        {
                            db.Configuration.ValidateOnSaveEnabled = oldValidateOnSaveEnabled;
                        }

                    }

                });
            }
        }

        public ICommand DeleteWorkmanButtonClick
        {
            get
            {
                // это называется Лямбда-выражение
                return new BaseCommand<object>((workman) =>
                {
                    //нет выделеных строк
                    if (workman as Workman == null)
                    {
                        return;
                    }
                    var workmanToDel = workman as Workman;
                    using (var db = new EcoLabEntities())
                    {
                        bool oldValidateOnSaveEnabled = db.Configuration.ValidateOnSaveEnabled;

                        try
                        {
                            db.Configuration.ValidateOnSaveEnabled = false;

                            var w = new Workman { Id = workmanToDel.Id };

                            db.Workman.Attach(w);
                            db.Entry(w).State = EntityState.Deleted;
                            db.SaveChanges();
                            Workmans.Remove(workmanToDel);
                        }
                        catch
                        {
                            //TODO код обработки ошибки
                        }
                        finally
                        {
                            db.Configuration.ValidateOnSaveEnabled = oldValidateOnSaveEnabled;
                        }

                    }

                });
            }
        }


        public ObservableCollection<Workman> Workmans
        {
            get
            {
                return _workmans;
            }
            set
            {
                _workmans = value;

                RaisePropertyChanged();
            }
        }

        public ICommand WorkmansButtonClickCommand
        {
            get
            {
                return new BaseCommand(() =>
                {
                    SelectedCategory = 1;
                });
            }
        }

        private void GetWorkmans()
        {
            using (var db = new EcoLabEntities())
            {
                Workmans = new ObservableCollection<Workman>(db.Workman.ToList());
            }
        }

        public ICommand AddNewProductClickCommand
        {
            get
            {
                return new RelayCommand<Window>((wnd) =>
                {
                    View.AddNewProductWindow newProductWindows = new View.AddNewProductWindow();
                    newProductWindows.Owner = wnd;
                    try
                    {
                        newProductWindows.ShowDialog();
                        CategoryButtonClickCommand.Execute(_categoryName);
                    }
                    catch (Exception exc)
                    {
                        MessageBox.Show(exc.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                });
            }
        }

        public ICommand AddNewWorkmanClickCommand
        {
            get
            {
                return new RelayCommand<Window>((wnd) =>
                {
                    View.AddNewWorkmanWindow newWorkmanWindow = new View.AddNewWorkmanWindow();
                    newWorkmanWindow.Owner = wnd;
                    try
                    {
                        newWorkmanWindow.ShowDialog();
                        SelectedCategory = 1;
                    }
                    catch (Exception exc)
                    {
                        MessageBox.Show(exc.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                });
            }
        }

    }
}

