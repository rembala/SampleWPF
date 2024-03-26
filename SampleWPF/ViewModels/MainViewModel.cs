using SampleWPF.Commands;
using SampleWPF.Core;

namespace SampleWPF.ViewModels
{
    public class MainViewModel : BindBase
    {
        public BaseCommand<string> NavCommand { get; private set; }

        StudentViewModel studentViewModel = new StudentViewModel();
        PersonViewModel personViewModel = new PersonViewModel();

        private BindBase _CurrentViewModel;

        public BindBase CurrentViewModel {
            get { return _CurrentViewModel; }
            set { SetProperty(ref _CurrentViewModel, value); }
        }

        public MainViewModel()
        {
            NavCommand = new BaseCommand<string>(OnNav);
        }

        private void OnNav(string destination)
        {
            switch (destination)
            {
                case "orders":
                    CurrentViewModel = studentViewModel;
                    break;

                case "customers":
                    CurrentViewModel = new AddEditCustomerViewModel { Customer = new Model.SimpleEditableCustomer() };
                    break;
            }
        }
    }
}
