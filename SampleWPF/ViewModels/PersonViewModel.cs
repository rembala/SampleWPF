using SampleWPF.Core;
using System.Windows.Input;
using PersonModel = SampleWPF.Model.Person;

namespace SampleWPF.ViewModels
{
    public class PersonViewModel : BindBase
    {
        private IList<PersonModel> _personList;

        public PersonViewModel()
        {
                _personList = new List<PersonModel>()
            {
                new PersonModel(){Name="Prabhat", Address="Bangalore"},
                new PersonModel(){Name="John",Address="Delhi"}
            };
        }

        public IList<PersonModel> Persons
        {
            get { return _personList; }
            set { _personList = value; }
        }

        private ICommand mUpdater;
        public ICommand UpdateCommand
        {
            get
            {
                if (mUpdater == null)
                    mUpdater = new Updater();
                return mUpdater;
            }
            set
            {
                mUpdater = value;
            }
        }
    }

    class Updater : ICommand
    {
        public bool CanExecute(object parameter)
        {
            return true;
        }

        // In order to know CanExecute value, then CanExecuteChanged event needs to invoked.
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public void Execute(object parameter)
        {
            //Your Code  
        }
    }
}
