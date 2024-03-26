using SampleWPF.Commands;
using System.ComponentModel;
using System.Windows.Input;

namespace SampleWPF.ViewModels
{
    public class RegisterFormViewModel : BindibleBase
    {
        private string _userName;
        public string UserName
        {
            get { return _userName; }
            set { 
                _userName = value;
                RaisePropertyChanged(nameof(UserName));
            }
        }

        private string _age;
        public string Age
        {
            get { return _age; }
            set { _age = value;
                RaisePropertyChanged(nameof(Age));
            }
        }

        private string _emailId;
        public string EmailId
        {
            get { return _emailId; }
            set { _emailId = value;
                RaisePropertyChanged(nameof(EmailId));
            }
        }

        private bool _isButtonClicked;

        public bool IsButtonClicked
        {
            get { return _isButtonClicked; }
            set { _isButtonClicked = value;
                RaisePropertyChanged(nameof(IsButtonClicked));
            }
        }

        public ICommand RegisterButtonClicked { get; set; }
        public ICommand ResetButtonClicked { get; set; }
 
        public RegisterFormViewModel()
        {
            RegisterButtonClicked = new RelayCommand(RegisterUser, CanUserRegister);
            ResetButtonClicked = new RelayCommand(ResetPage, CanResetPage);
        }

        private void RegisterUser(object value)
        {
            IsButtonClicked = true;
        }

        private bool CanUserRegister(object value)
        {
            if (string.IsNullOrEmpty(UserName))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        private void ResetPage(object value)
        {
            IsButtonClicked = false;
            UserName = Age = EmailId = "";
        }

        private bool CanResetPage(object value)
        {
            if (string.IsNullOrEmpty(UserName)
                || string.IsNullOrEmpty(EmailId)
                || string.IsNullOrEmpty(Age))
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }

    public class BindibleBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler? PropertyChanged;

        protected void RaisePropertyChanged(string property) {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(property));
            }
        }
    }
}
