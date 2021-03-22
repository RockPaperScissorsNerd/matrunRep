﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MathiasOgRune
{
    public partial class RPS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //test if user is loggedin, is there a session named "Username"?

            //if(Session["Username"] == null)
            //{
            //Response.Redirect("Default.aspx");

            //}

            //string userName = (string)Session["Username"];


        }

        protected void LinkButtonSignOut_Click(object sender, EventArgs e)
        {
            //Session["Username"] = null;
            Response.Redirect("Default.aspx");
        }

        protected void StartGame(object sender, EventArgs e)
        {
            
        }

        protected void RPSPick(object sender, EventArgs e)
        {
            Button RPS = (Button)sender;
            int BotRPS = RandomRPS();
            RPSPicked.Text = "You picked: " + RPS.ID;
            if (RPS.ID == "Rock")
            {
                if (BotRPS == 1)
                {
                    //STALEMATE (ROCK VS ROCK)
                }
                else if (BotRPS == 2)
                {
                    //BOT WINS (ROCK VS PAPER)
                }
                else if (BotRPS == 3)
                {
                    //PLAYER WINS (ROCK VS SCISSORS)
                }
            }
            else if (RPS.ID == "Paper")
            {
                if (BotRPS == 1)
                {
                    //PLAYER WINS (PAPER VS ROCK)
                }
                else if (BotRPS == 2)
                {
                    //STALEMATE (PAPER VS PAPER)
                }
                else if (BotRPS == 3)
                {
                    //BOT WINS (PAPER VS SCISSORS)
                }
            }
            else if (RPS.ID == "Scissors")
            {
                if (BotRPS == 1)
                {
                    //BOT WINS (SCISSORS VS ROCK)
                }
                else if (BotRPS == 2)
                {
                    //PLAYER WINS (SCISSORS VS PAPER)
                }
                else if (BotRPS == 3)
                {
                    //STALEMATE (SCISSORS VS SCISSORS)
                }
            }
        }

        private static readonly Random random = new Random();
        private static readonly object syncLock = new object();
        public static int RandomRPS()
        {
            Default prog = new Default();
            lock (syncLock)
            {
                int randomNum = random.Next(1, 3);
                return randomNum;
            }
        }
    }
}