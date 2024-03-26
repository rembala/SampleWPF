using System.Windows;
using System.Windows.Controls;

namespace SampleWPF.View.UserControls
{
    /// <summary>
    /// Interaction logic for TextBoxUserControl.xaml
    /// </summary>
    public partial class TextBoxUserControl : UserControl
    {
        public TextBoxUserControl()
        {
            InitializeComponent();
        }

        private string placeHolder;

        public string PlaceHolder
        {
            get { return placeHolder; }
            set {
                placeHolder = value;
                tbPlaceHolder.Text = placeHolder;
            }
        }

        private void btnClear_Click(object sender, RoutedEventArgs e)
        {
            txtInput.Clear();
            txtInput.Focus();
        }

        private void txtInput_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtInput.Text))
            {
                tbPlaceHolder.Visibility = Visibility.Visible;
            } else {
                tbPlaceHolder.Visibility = Visibility.Hidden;
            }
        }
    }
}
