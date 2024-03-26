using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace SampleWPF.Core
{
    public class BindBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler? PropertyChanged;

        protected virtual void SetProperty<T>(ref T member, T val, [CallerMemberName] string propertyName = null) {
            if(Equals(member, val)) return;

            member = val;
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        //sends updates to xaml control
        protected virtual void OnPropertyChanged(string propertyName) {
            PropertyChanged(this,new PropertyChangedEventArgs(propertyName));
        }
    }
}
