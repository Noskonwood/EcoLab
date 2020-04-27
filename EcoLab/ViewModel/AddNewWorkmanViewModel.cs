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
    public class AddNewWorkmanViewModel : ViewModelBase
    {
        private Workman _newWorkman = new Workman();
        public Workman NewWorkman
        {
            get
            {
                return _newWorkman;
            }
            set
            {
                _newWorkman = value;
                RaisePropertyChanged();
            }
        }

        /// <summary>
        /// Initializes a new instance of the AddNewWorkmanViewModel class.
        /// </summary>
        public AddNewWorkmanViewModel()
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
                            db.Workman.Add(NewWorkman);
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