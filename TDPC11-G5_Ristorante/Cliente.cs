﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TDPC11_G5_Ristorante
{
    public class Cliente
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Cognome { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public bool Deleted { get; set; }
    }
}