using MahApps.Metro.Controls;
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
using TPGO_ConneX.Classes;
using System.Media;
using MaterialDesignColors;
using MaterialDesignThemes;
using QuickGraph;
using CompConexG.Classes;
using GraphSharp;
using System.ComponentModel;
using GraphSharp.Algorithms.Layout.Compound.FDP;
using GraphSharp.Algorithms.Layout.Compound;

namespace TPGO_ConneX
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    /// 

    public partial class MainWindow : MetroWindow
    {
        
       
        BidirectionalGraph<object, IEdge<object>> g = new BidirectionalGraph<object, IEdge<object>>();

        public int nbVirtex = 0;
        public int nbVirtexAdded = 0;
        public List<int> addedVir = new List<int>();
        public List<string> display = new List<string> {"FR","Tree","Circular","BoundedFR","KK","ISOM","LinLog","EfficientSugiyama","CompoundFDP"};
        int[,] matrixAj;

        public MainWindow()
        {
           // DisplayGraph();
            InitializeComponent();
        }

        private void homeBnt_Click(object sender, RoutedEventArgs e)
        {
            
            Configuration.buttonClicked(homeBnt);
            tabControl.SelectedIndex = 0;
            header.Text = "Home";
        }

        private void bt1_Click(object sender, RoutedEventArgs e)
        {
            Configuration.buttonClicked(bt1);
            tabControl.SelectedIndex = 1;
            header.Text = "Create Graph";
            addV.IsEnabled = false;
            Rem.IsEnabled = false;
            add.IsEnabled = false;
        }

        private void bt2_Click(object sender, RoutedEventArgs e)
        {
            Configuration.buttonClicked(bt2);
            tabControl.SelectedIndex = 2;
            header.Text = "Display Graph";
            DisplyM.ItemsSource = display;
            DisplyM.SelectedValue = "Tree";
            Glayout2.LayoutAlgorithmType = "Tree";
            
        }

        private void bt3_Click(object sender, RoutedEventArgs e)
        {
            Configuration.buttonClicked(bt3);
            tabControl.SelectedIndex = 3;
            header.Text = "Execute Algorithm";
            Glayout3.LayoutAlgorithmType = DisplyM.Text.Equals("") ? "KK" : DisplyM.Text;
            
        }



        private void bt1_MouseEnter(object sender, MouseEventArgs e)
        {
            bt1.Background = new SolidColorBrush(Color.FromArgb(255, 46, 173, 245));
            bt1.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 46, 173, 245));
        }

        private void bt1_MouseLeave(object sender, MouseEventArgs e)
        {
            bt1.Background = new SolidColorBrush(Color.FromArgb(255, 40, 39, 43));
            bt1.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 40, 39, 43));
        }



        private void bt2_MouseEnter(object sender, MouseEventArgs e)
        {
            bt2.Background = new SolidColorBrush(Color.FromArgb(255, 46, 173, 245));
            bt2.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 46, 173, 245));

        }

        private void bt2_MouseLeave(object sender, MouseEventArgs e)
        {
            bt2.Background = new SolidColorBrush(Color.FromArgb(255, 40, 39, 43));
            bt2.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 40, 39, 43));
        }



        private void bt3_MouseEnter(object sender, MouseEventArgs e)
        {
            bt3.Background = new SolidColorBrush(Color.FromArgb(255, 46, 173, 245));
            bt3.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 46, 173, 245));

        }

        private void bt3_MouseLeave(object sender, MouseEventArgs e)
        {
            bt3.Background = new SolidColorBrush(Color.FromArgb(255, 40, 39, 43));
            bt3.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 40, 39, 43));
        }

        private void homeBnt_MouseEnter(object sender, MouseEventArgs e)
        {
            homeBnt.Background = new SolidColorBrush(Color.FromArgb(255, 46, 173, 245));
            homeBnt.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 46, 173, 245));

        }

        private void homeBnt_MouseLeave(object sender, MouseEventArgs e)
        {
            homeBnt.Background = new SolidColorBrush(Color.FromArgb(255, 40, 39, 43));
            homeBnt.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 46, 173, 245));
        }
 
        public void DisplayGraph()
        {
            
            g.AddVertex("0");
            g.AddVertex("1");
            g.AddVertex("2");
            g.AddVertex("3");
            g.AddEdge(new Edge<object>("0", "1"));
            g.AddEdge(new Edge<object>("0", "2"));
            g.AddEdge(new Edge<object>("2", "3"));
            
          
          //  _graphToVisualize = g;

            DataContext = g;
        }

       public void initZero()
        {
           matrixAj = new int[nbVirtex, nbVirtex];
           for(int i=0;i <nbVirtex;i++)
           {
               for (int j =0;j<nbVirtex;j++)
               {
                   matrixAj[i, j] = 0;
               }
           }
        }

        private void nbVir_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                this.nbVirtex = Convert.ToInt32(nbVirText.Text);
                initZero();                             
                nbVir.IsEnabled = false;
                addV.IsEnabled = true;
            }
            catch 
            {
                MessageBox.Show("An integer Required");
            }
        }

        private void nbVirText_GotFocus(object sender, RoutedEventArgs e)
        {
           
            nbVirText.Text = " ";
            nbVirText.Foreground = new SolidColorBrush(Color.FromArgb(255, 0, 0, 0));
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
           /* if (nbVirtexAdded < nbVirtex)
            {
                g.AddVertex(nbVirtexAdded.ToString());
                addedVir.Add(nbVirtexAdded);
                edge1.ItemsSource = addedVir;
                edge2.ItemsSource = addedVir;
                
                nbVirtexAdded++;
                DataContext = g;
                addV.IsEnabled = true;
            }
            else
            {
                addV.IsEnabled = false;
            }*/

            while (nbVirtexAdded<nbVirtex)
            {
                g.AddVertex(nbVirtexAdded.ToString());
                addedVir.Add(nbVirtexAdded);
                nbVirtexAdded++;
            }
            edge1.ItemsSource = addedVir;
            edge2.ItemsSource = addedVir;
            DataContext = g;           
            addV.IsEnabled = false;
            Rem.IsEnabled = true;
            add.IsEnabled = true;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (!edge1.Text.Equals(edge2.Text))
                {
                    g.AddEdge(new Edge<object>(edge1.Text.ToString(), edge2.Text.ToString()));
                    g.AddEdge(new Edge<object>(edge2.Text.ToString(), edge1.Text.ToString()));
                    matrixAj[Convert.ToInt32(edge1.Text), Convert.ToInt32(edge2.Text)] = 1;
                    matrixAj[Convert.ToInt32(edge2.Text), Convert.ToInt32(edge1.Text)] = 1;
                }
            }
            catch
            {
                MessageBox.Show("An interger required !!");
            }
           

        }


        public void print ()
        {
            for (int i = 0; i < nbVirtex; i++)
            {
                for (int j = 0; j < nbVirtex; j++)
                {
                    Console.Write(matrixAj[i, j]+" ");
                }
                Console.WriteLine("");
            }
        }

        private void DisplyM_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Glayout2.LayoutAlgorithmType = DisplyM.SelectedItem.ToString();
          

        }

        private void Reset_Click(object sender, RoutedEventArgs e)
        {
           for (int i = 1; i < this.nbVirtex; i++)
            {
                g.RemoveVertex(i.ToString());
            }

          
            nbVirtex = 1;
            nbVirtexAdded = 1;
            //addedVir.Clear();
            addedVir = new List<int>();
            addedVir.Add(0);
            addV.IsEnabled = false;
            nbVir.IsEnabled = true;
            Rem.IsEnabled = false;
            add.IsEnabled = false;
            
          
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Graphe graph = new Graphe(matrixAj);
            List<int> l = new List<int>();
            l = graph.connexPoint(matrixAj);
            foreach(int i in l )
            {
                //MessageBox.Show(i.ToString());
                draw(i);
            }
           
          
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            if (!edge1.Text.Equals(edge2.Text))
            {
                    matrixAj[Convert.ToInt32(edge1.Text), Convert.ToInt32(edge2.Text)] = 0;
                    matrixAj[Convert.ToInt32(edge2.Text), Convert.ToInt32(edge1.Text)] = 0;          
                try
                {
                    IEdge<Object> myEdge;
                    g.TryGetEdge(edge1.Text, edge2.Text, out myEdge);
                    g.RemoveEdge(myEdge);
                    g.TryGetEdge(edge2.Text, edge1.Text, out myEdge);
                    g.RemoveEdge(myEdge);
                   
                }
                catch
                {
                    MessageBox.Show("Edge already deleted !!");
                   
                }
                
            }
            
        }

        public void draw(int i)
        {
            Ellipse myEllipse = new Ellipse();
          
            myEllipse.Stroke = System.Windows.Media.Brushes.Blue;
            myEllipse.Fill = System.Windows.Media.Brushes.Blue;
            
            myEllipse.Height = 40;
            myEllipse.Width = 40;
            TranslateTransform transform = new TranslateTransform();
            transform.X = 10;
            transform.Y = 10+5*i;
            myEllipse.RenderTransform = transform;

            TextBlock txt = new TextBlock();
            txt.Text = i.ToString();
            txt.Foreground = Brushes.White;
            txt.FontSize = 12;
            txt.Width = 15;
            txt.Height = 20;
            txt.RenderTransform = transform;

            //Create a grid and add your ellipse and text to it
            Grid gr = new Grid();
            gr.Children.Add(myEllipse);
            gr.Children.Add(txt);

            ElipsePanel.Children.Add(gr);
                   
        }

        

       
       
        
    }
}
