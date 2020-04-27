using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using EcoLab.Helpers;
using System.Runtime.CompilerServices;

namespace EcoLab.ViewModel
{
    public class BaseViewModel : INotifyPropertyChanged
    {
        #region DisplayName
        public virtual string DisplayName { get; protected set; }
        #endregion //DisplayName

        #region Command
        public ICommand CloseApplicationCommand
        {
            get
            {
                return new BaseCommand(closeApplication);
            }
        }
        private static void closeApplication()
        {
            Application.Current.Shutdown();
        }

        #endregion
        #region Propertychanged

        protected void OnPropertyChanged<T>(Expression<Func<T>> action)
        {
            var propertyName = GetPropertyName(action);
            OnPropertyChanged(propertyName);
        }

        private static string GetPropertyName<T>(Expression<Func<T>> action)
        {
            var expression = (MemberExpression)action.Body;
            var propertyName = expression.Member.Name;
            return propertyName;
        }

        public void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChangedEventHandler handler = PropertyChanged;
            if (handler != null)
            {
				//TODO сделать вызов из главного потока
                var e = new PropertyChangedEventArgs(propertyName);
                handler(this, e);
            }
        }

        public virtual void Activate()
        {

        }
        public virtual void Deactivate()
        {

        }

        public event PropertyChangedEventHandler PropertyChanged;
     


        #endregion
    }
}
