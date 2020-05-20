﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BusinessLogic;

namespace UserInterface
{
    public partial class AddEntityView : UserControl
    {
        private MainWindow mainWin;

        public AddEntityView(MainWindow main)
        {
            InitializeComponent();
            mainWin = main;
        }

        private void BtnCancelAddEntity_Click(object sender, EventArgs e)
        {
            mainWin.SwitchToEntitiesView();
        }

        private void BtnAddEntity_Click(object sender, EventArgs e)
        {
            try
            {
                String text = textBoxEntityName.Text;
                EntityAdder adder = new EntityAdder(mainWin.Data,text);
                mainWin.SwitchToEntitiesView();
            }
            catch(ObjectAlreadyExistsException)
            {
                labelEntityNameException.Visible = true;
                labelEntityNameException.Text = "Error: La entidad que intenta ingresar ya existe";
            }
            catch(TextTooLongException)
            {
                labelEntityNameException.Visible = true;
                labelEntityNameException.Text = "Error: La entidad que intenta ingresar tiene un nombre muy largo";
            }
            catch (TextTooShortException)
            {
                labelEntityNameException.Visible = true;
                labelEntityNameException.Text = "Error: La entidad que intenta ingresar tiene un nombre muy corto o vacio";
            }
        }
    }
}
