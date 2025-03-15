using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using System.Reflection;
using System.Linq;

namespace LANOrigin
{
    /// <summary>
    /// GamesWindow.xaml
    /// </summary>
    public partial class GamesWindow : Window, INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        private double _coverWidth = 63;
        private double _coverHeight = 89;

        public double CoverWidth
        {
            get { return _coverWidth; }
            set { _coverWidth = value; PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("CoverWidth")); }
        }

        public double CoverHeight
        {
            get { return _coverHeight; }
            set { _coverHeight = value; PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("CoverHeight")); }
        }

        public ObservableCollection<string> GameCovers { get; set; }

        public GamesWindow()
        {
            InitializeComponent();
            DataContext = this;

            // Pfad des aktuellen EXE-Verzeichnisses abrufen
            string exePath = System.IO.Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
            string imagePath = System.IO.Path.Combine(exePath, "Images"); // Unterordner "Images" nutzen

            // Alle JPG- und PNG-Dateien aus dem Verzeichnis laden
            if (Directory.Exists(imagePath))
            {
                GameCovers = new ObservableCollection<string>(Directory.GetFiles(imagePath, "*.jpg")
                    .Concat(Directory.GetFiles(imagePath, "*.png")));
            }
            else
            {
                GameCovers = new ObservableCollection<string>();
            }
        }

        private void SizeSliderChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            switch ((int)e.NewValue)
            {
                case 0: // Small
                    CoverWidth = 63;
                    CoverHeight = 89;
                    break;
                case 1: // Medium
                    CoverWidth = 142;
                    CoverHeight = 200;
                    break;
                case 2: // Large
                    CoverWidth = 231;
                    CoverHeight = 326;
                    break;
            }
        }
        private void ImageClicked(object sender, RoutedEventArgs e)
        {
            if (sender is Button button && button.DataContext is string imagePath)
            {
                ImageWindow imageWindow = new ImageWindow(imagePath);
                imageWindow.Show();
            }
        }
    }
}
