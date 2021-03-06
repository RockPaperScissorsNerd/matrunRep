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

        protected void RPSPick(object sender, EventArgs e)
        {
            ImageButton RPS = sender as ImageButton;
            int BotRPS = RandomRPS();
            RPSPicked.Text = "";
            Rock.BorderStyle = BorderStyle.None;
            Paper.BorderStyle = BorderStyle.None;
            Scissors.BorderStyle = BorderStyle.None;
            RPS.BorderStyle = BorderStyle.Groove;
            BotRock.BorderStyle = BorderStyle.None;
            BotPaper.BorderStyle = BorderStyle.None;
            BotScissors.BorderStyle = BorderStyle.None;
            RPSPicked.Text = "You picked: " + RPS.ID + ".";
            if (RPS.ID == "Rock")
            {  
                if (BotRPS == 1)
                {
                    //STALEMATE (ROCK VS ROCK)
                    BotPicked.Text = "Bot picked: Rock.";
                    GameResults.Text = "STALEMATE!";
                    BotRock.BorderStyle = BorderStyle.Groove;
                }
                else if (BotRPS == 2)
                {
                    //BOT WINS (ROCK VS PAPER)
                    BotPicked.Text = "Bot picked: Paper.";
                    GameResults.Text = "BOT WINS!";
                    BotPaper.BorderStyle = BorderStyle.Groove;
                }
                else if (BotRPS == 3)
                {
                    //PLAYER WINS (ROCK VS SCISSORS)
                    BotPicked.Text = "Bot picked: Scissors.";
                    GameResults.Text = "YOU WIN!";
                    BotScissors.BorderStyle = BorderStyle.Groove;
                }
            }
            else if (RPS.ID == "Paper")
            {
                if (BotRPS == 1)
                {
                    //PLAYER WINS (PAPER VS ROCK)
                    BotPicked.Text = "Bot picked: Rock.";
                    GameResults.Text = "YOU WIN!";
                    BotRock.BorderStyle = BorderStyle.Groove;
                }
                else if (BotRPS == 2)
                {
                    //STALEMATE (PAPER VS PAPER)
                    BotPicked.Text = "Bot picked: Paper.";
                    GameResults.Text = "STALEMATE!";
                    BotPaper.BorderStyle = BorderStyle.Groove;
                }
                else if (BotRPS == 3)
                {
                    //BOT WINS (PAPER VS SCISSORS)
                    BotPicked.Text = "Bot picked: Scissors.";
                    GameResults.Text = "BOT WINS!";
                    BotScissors.BorderStyle = BorderStyle.Groove;
                }
            }
            else if (RPS.ID == "Scissors")
            {
                if (BotRPS == 1)
                {
                    //BOT WINS (SCISSORS VS ROCK)
                    BotPicked.Text = "Bot picked: Rock.";
                    GameResults.Text = "BOT WINS!";
                    BotRock.BorderStyle = BorderStyle.Groove;
                }
                else if (BotRPS == 2)
                {
                    //PLAYER WINS (SCISSORS VS PAPER)
                    BotPicked.Text = "Bot picked: Paper.";
                    GameResults.Text = "YOU WIN!";
                    BotPaper.BorderStyle = BorderStyle.Groove;
                }
                else if (BotRPS == 3)
                {
                    //STALEMATE (SCISSORS VS SCISSORS)
                    BotPicked.Text = "Bot picked: Scissors.";
                    GameResults.Text = "STALEMATE!";
                    BotScissors.BorderStyle = BorderStyle.Groove;
                }
            }
        }

        private static readonly Random random = new Random();
        private static readonly object syncLock = new object();
        public static int RandomRPS()
        {
            //Default prog = new Default();
            lock (syncLock)
            {
                int randomNum = random.Next(1, 4);
                return randomNum;
            }
        }
    }
}