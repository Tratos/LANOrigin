using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace LANOrigin
{
    /// <summary>
    /// ImageWindow.xaml
    /// </summary>
    public partial class ImageWindow : Window
    {
        public ImageWindow(string imagePath)
        {
            InitializeComponent();
            DisplayImage(imagePath);
        }

        private void DisplayImage(string imagePath)
        {
            var bitmap = new BitmapImage(new System.Uri(imagePath));
            ImageControl.Source = bitmap;
        }
    }
}
