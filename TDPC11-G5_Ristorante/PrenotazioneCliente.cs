﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TDPC11_G5_Ristorante
{
    public class PrenotazioneCliente
    {
        public Guid ID { get; set; }
        public DateTime Date { get; set; }
        public int Coperti { get; set; }
        public string Cliente { get; set; }
    }
}