using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows;

namespace SampleWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ObservableCollection<Person> items = new ObservableCollection<Person>() {new Person{ FirstName = "Artur" }, new Person { FirstName = "Artur2" } };

        public MainWindow()
        {
            InitializeComponent();
        }

        public ObservableCollection<Person> GetItems {
            get { return items; }
            set { items = value; }
        }
    }

    public class Person : INotifyPropertyChanged
    {
        public string Name { get; set; }

        private string _fisrtname;
        public string FirstName
        {
            get
            {
                return _fisrtname;
            }
            set
            {
                _fisrtname = value;
                OnPropertyRaised("FirstName");
                OnPropertyRaised("FullName");
            }
        }
        private string _lastname;
        public string LastName
        {
            get
            {
                return _lastname;
            }
            set
            {
                _lastname = value;
                OnPropertyRaised("LastName");
                OnPropertyRaised("FullName");
            }
        }
        private string _fullname;
        public string FullName
        {
            get
            {
                return _fisrtname + " " + _lastname;
            }
            set
            {
                _fullname = value;
                OnPropertyRaised("FullName");
            }
        }
        public Person()
        {
            //_fisrtname = "Artur";
            //_lastname = "Maslovskij";
        }
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyRaised(string propertyname)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyname));
            }
        }
    }
}
