﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UserInterface
{
    public partial class EntitiesView : UserControl
    {
        private MainWindow mainWin;

        public EntitiesView(MainWindow main)
        {
            InitializeComponent();
            mainWin = main;
            UpdateEntities();
        }
        private void UpdateEntities()
        {
            listBoxEntities.Items.Clear();
            listBoxEntities.DataSource = mainWin.Data.entitySaver.FetchAll();
            listBoxEntities.DisplayMember = "Name";
        }

        private void BtnAddEntity_Click(object sender, EventArgs e)
        {
            mainWin.SwitchToAddEntityView();
        }
    }
}