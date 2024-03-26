using System.ComponentModel;

namespace SampleWPF.Model
{
    public class Person : INotifyPropertyChanged
    {
        private string name;
        private string address;

        public event PropertyChangedEventHandler? PropertyChanged;
        
        public void OnPropertyChanged(string propertyName) {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        public string Name {
            get {
                return name;
            }

            set {
                name = value;
                OnPropertyChanged("Name");
            }
        }

        public string Address
        {
            get
            {
                return address;
            }

            set
            {
                address = value;
                OnPropertyChanged("Address");
            }
        }
    }
}
