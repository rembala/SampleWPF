using SampleWPF.Commands;
using SampleWPF.Core;
using SampleWPF.Model;
using System.Windows;

namespace SampleWPF.ViewModels
{
    public class AddEditCustomerViewModel : BindBase
    {
        public MyICommand CancelCommand { get; set; }
        public MyICommand SaveCommand { get; set; }

        private Customer _editingCustomer = null;

        private bool _EditMode;

        public bool EditMode
        {
            get { return _EditMode; }
            set { SetProperty(ref _EditMode, value); }
        }

        private SimpleEditableCustomer _Customer;

        public SimpleEditableCustomer Customer
        {
            get { return _Customer; }
            set { SetProperty(ref _Customer, value); }
        }

        public AddEditCustomerViewModel()
        {
            CancelCommand = new MyICommand(OnCancel);
            SaveCommand = new MyICommand(OnSave, CanSave);
        }

        public void SetCustomer(Customer cust)
        {
            _editingCustomer = cust;

            if (Customer != null) Customer.ErrorsChanged -= RaiseCanExecuteChanged;
            Customer = new SimpleEditableCustomer();
            Customer.ErrorsChanged += RaiseCanExecuteChanged;
            //CopyCustomer(cust, Customer);
        }

        public event Action Done = delegate { };

        private void OnCancel()
        {
            Done();
        }

        private async void OnSave()
        {
            var message = $"Current customer data is: {Customer.FirstName} {Customer.LastName}";

            await Task.Run(() => MessageBox.Show(message));
        }

        private bool CanSave()
        {
            if (Customer == null)
            {
                return false;
            }

            return !Customer.HasErrors;
        }

        private void RaiseCanExecuteChanged(object sender, EventArgs e)
        {
            SaveCommand.RaiseCanExecuteChanged();
        }
    }
}
