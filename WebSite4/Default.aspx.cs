using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
    
    //create 2d arrray
    string[,] events = new string[6, 2];
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //add things to 2d array
        //0 = date 1 = the event name
        events[0, 0] = "1/26/2017";
        events[0, 1] = "4/4 Thursday";
        events[1, 0] = "1/29/2017";
        events[1, 1] = "Birthday";
        events[2, 0] = "1/31/2017";
        events[2, 1] = "Taco Tuesday";
        events[3, 0] = "1/31/2017";
        events[3, 1] = "dnb tuesdays";
        events[4, 0] = "2/2/2017";
        events[4, 1] = "Grime show";
        events[5, 0] = "2/6/2017";
        events[5, 1] = "Spirit Days";

        
       

    }

    protected void CheckEvents_Click(object sender, EventArgs e)
    {
        CompareDate();

    }

    protected void CompareDate()
    {
        //Get the Date for the Calendar
        String calendarDate = Calendar1.SelectedDate.ToShortDateString();
        label1.Text = "";
        //looping through the events 

        //looping through length of events 
        for (int i = 0; i < events.GetLength(0); i++)
        {
            //if calendar matches events date 
            if (calendarDate.Equals(events[i, 0]))
            {
                //print event
                label1.Text += events[i, 1] + "<br/>";

            }

       }

    }
    
    
}