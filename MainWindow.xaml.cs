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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Net.Http;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Text.RegularExpressions;

namespace GuardianInterviewProject
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        HttpClient client = new HttpClient();

        public MainWindow()
        {
            InitializeComponent();
        }

        private async void Button_Click(object sender, RoutedEventArgs e)
        {
            result.Content = "API call pending, loading image...";
            resultBackground.Background = Brushes.LightGray;
            string request = String.Format("https://api.nasa.gov/planetary/earth/assets?lon={0}&lat={1}&date={2}&dim={3}&api_key=DEMO_KEY", longitude.Text, latitude.Text, Convert.ToDateTime(date.Text).ToString("yyyy-MM-dd"), slider.Value);
            Task<string> task = client.GetStringAsync(request);
            string response;
            try
            {
                response = await task;
            } catch(Exception except)
            {
                image.Source = null;
                result.Content = "API call failed.";
                resultBackground.Background = Brushes.Red;
                return;
            }
            JsonNode jsonNode = JsonNode.Parse(response);
            BitmapImage bitmapImage = new BitmapImage();
            bitmapImage.BeginInit();
            bitmapImage.UriSource = new Uri(jsonNode["url"].GetValue<string>(), UriKind.Absolute);
            bitmapImage.EndInit();
            image.Source = bitmapImage;

            imageDate.Text = (string)jsonNode["date"];
            imageID.Text = (string)jsonNode["id"];
            imageDataset.Text = (string)jsonNode["resource"]["dataset"];
            imagePlanet.Text = (string)jsonNode["resource"]["planet"];
            imageURL.Text = (string)jsonNode["url"];

            result.Content = "API call suceeded!";
            resultBackground.Background = Brushes.Green;
        }

        private void Text_Num_Validation(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("^[.][0-9]+$|^[0-9]*[.]{0,1}[0-9]*$");
            e.Handled = !regex.IsMatch((sender as TextBox).Text.Insert((sender as TextBox).SelectionStart, e.Text));
        }
    }
}
