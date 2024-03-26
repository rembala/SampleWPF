using System.Windows.Controls;

namespace SampleWPF.View.UserControls
{
    /// <summary>
    /// Interaction logic for AddEditCustomerView.xaml
    /// </summary>
    public partial class AddEditCustomerView : UserControl
    {
        public AddEditCustomerView()
        {
            InitializeComponent();
            
        }

        private async void Grid_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            await Task.Delay(4000);
        }
    }
}
