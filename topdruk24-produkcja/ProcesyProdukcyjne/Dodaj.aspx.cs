﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace topdruk24_produkcja.ProcesyProdukcyjne
{
    public partial class Dodaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Cancel_Action(object sender, EventArgs e)
        {
            inputNazwa.Value = null;
            inputOpis.Value = null;
            System.Diagnostics.Debug.WriteLine("Wyczyszczono");
        }

        public void Insert_Action(object sender, EventArgs e)
        {
            SqlDataSource_Procesy.InsertParameters.Add("Nazwa", inputNazwa.Value);
            SqlDataSource_Procesy.InsertParameters.Add("Opis", inputOpis.Value);
            SqlDataSource_Procesy.Insert();
            Response.Write("<script>alert('Pomyślnie dodano zlecenie.');</script>");
            Cancel_Action(null, null);
        }
    }
}