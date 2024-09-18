using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : Page
{
    private static readonly Dictionary<string, List<string>> StateCityMap = new Dictionary<string, List<string>>
    {
        { "Madhya Pradesh", new List<string> { "Bhopal", "Indore", "Gwalior", "Jabalpur", "Sagar","Damoh","Ujjain", "Hoshangabad", "Dewas","Satna","Rewa","Bina" } },
        { "Maharashtra", new List<string> { "Mumbai", "Pune", "Nagpur", "Aurangabad", "Nashik", "Nanded", "Washim", "Kolhapur", "Amravati","Thane" } },
        { "Karnataka", new List<string> { "Bangalore", "Mysore", "Hubli", "Dharwad", "Mangalore", "Kolar", "Shimoga" } },
        { "Uttar Pradesh", new List<string> { "LUCKNOW", "Ghaziabad", "Kanpur", "AGRA", "Aligarh", "Gorakhpur", "Bijnor", "Mathura" } },
        {"Rajasthan", new List<string>{"Jaipur", "Udaipur","Jodhpur","Kota","Bikaner", "Ajmer"} }
    };

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadStates();
        }
    }

    private void LoadStates()
    {
        ddlState.Items.Clear();
        ddlState.Items.Add(new ListItem("Select State", " "));
        foreach (var state in StateCityMap.Keys)
        {
            ddlState.Items.Add(new ListItem(state, state));
        }
    }

    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedState = ddlState.SelectedValue;
        LoadCities(selectedState);
    }

    private void LoadCities(string state)
    {
        ddlCity.Items.Clear();
        ddlCity.Items.Add(new ListItem("Select City", ""));

        if (StateCityMap.ContainsKey(state))
        {
            foreach (var city in StateCityMap[state])
            {
                ddlCity.Items.Add(new ListItem(city, city));
            }
        }
    }
}
