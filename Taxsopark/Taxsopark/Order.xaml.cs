using System;
using System.Collections.Generic;
using System.Data.Entity;
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
using Taxsopark.Models;

namespace Taxsopark
{
    /// <summary>
    /// Логика взаимодействия для Order.xaml
    /// </summary>
    public partial class Order : Window
    {
        TaxsoparkEntities db = Helper.GetContext();
        public Order()
        {
            InitializeComponent();
            var zapros = db.Zakazi;
            dtg_zakazi.ItemsSource = zapros.ToList();
        }

        private void btn_add_Click(object sender, RoutedEventArgs e)
        {
            if ((tb_datezakaza.Text.Equals("")) || (tb_idoplata.Text.Equals("")) || (tb_idpoezdka.Text.Equals("")) || (tb_idsmena.Text.Equals("")) || (tb_timezakaza.Text.Equals("")) || (tb_idclient.Text.Equals("")))
            {
                MessageBox.Show("Введи данные, чмо");
            }
            else
            {
                Zakazi newZakaz = new Zakazi();
                DateTime vremya = DateTime.Parse(tb_timezakaza.Text.ToString());
                newZakaz.VremiaZakaza = vremya;
                TimeSpan data = TimeSpan.Parse(tb_datezakaza.Text.ToString());
                newZakaz.DataZakaza = data;
                newZakaz.IdKlienta = int.Parse(tb_idclient.Text);
                newZakaz.IdSmena = int.Parse(tb_idsmena.Text);
                newZakaz.IdPoezdka = int.Parse(tb_idpoezdka.Text);
                newZakaz.IdOplata = int.Parse(tb_idoplata.Text);
                Create(newZakaz);
            }
        }

        private void btn_red_Click(object sender, RoutedEventArgs e)
        {
            Zakazi item = dtg_zakazi.SelectedItem as Zakazi;

            if (item != null)
            {
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
                refresh();
            }
        }

        private void btn_delete_Click(object sender, RoutedEventArgs e)
        {
            Zakazi item = dtg_zakazi.SelectedItem as Zakazi;

            if (item != null)
            {
                DbSet<Zakazi> items = db.Zakazi;
                items.Remove(item);
                db.SaveChanges();
                refresh();
            }
        }
        public void refresh()
        {
            InitializeComponent();
            var zapros = db.Zakazi;
            dtg_zakazi.ItemsSource = zapros.ToList();
        }

        public void Create(Zakazi zakazi)
        {
            db.Zakazi.Add(zakazi);
            db.SaveChanges();
            refresh();
        }
    }
}
