using System.Windows.Input;

namespace SampleWPF.Commands
{
    public class BaseCommand<T> : ICommand
    {
        public event EventHandler? CanExecuteChanged;

        Action<T> _TargetExecuteMethod;
        Func<T, bool> _TargetCanExecuteMethod;

        public BaseCommand(Action<T> executeMethod, Func<T, bool> canExecuteMethod)
        {
            _TargetCanExecuteMethod = canExecuteMethod;
            _TargetExecuteMethod = executeMethod;
        }

        public BaseCommand(Action<T> executeMethod)
        {
            _TargetExecuteMethod = executeMethod;
        }

        public bool CanExecute(object? parameter)
        {
            if (_TargetCanExecuteMethod != null)
            {
                T tparm = (T)parameter;
                return _TargetCanExecuteMethod(tparm);
            }

            if (_TargetExecuteMethod != null)
            {
                return true;
            }

            return false;
        }

        public void Execute(object? parameter)
        {
            if (_TargetExecuteMethod != null)
            {
                _TargetExecuteMethod((T)parameter);
            }
        }
    }
}
