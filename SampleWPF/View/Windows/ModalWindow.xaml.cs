using System.Windows;

namespace SampleWPF.View.Windows
{
    /// <summary>
    /// Interaction logic for ModalWindow.xaml
    /// </summary>
    public partial class ModalWindow : Window
    {
        public ModalWindow(Window window)
        {
            InitializeComponent();
            Owner = window;
        }


    }
}
