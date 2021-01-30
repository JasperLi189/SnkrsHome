using SnkrsHome.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using Microsoft.AspNet.FriendlyUrls;

namespace SnkrsHome.UserLayer
{
    public partial class Products : System.Web.UI.Page
    {
        private Product selectedProduct;
        public static List<Product> ItemList = new List<Product>();

        
        protected void Page_Init(object sender, EventArgs e)
        {
            //Testing for LogIn
            if (Session["Logon"] == null)
            {
                Response.Redirect("~/UserLayer/Login.aspx");
            }

        }


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ddl.DataBind(); 
            }
            //display the items for show
            selectedProduct = this.GetSelectProducts();
            lblName.Text = selectedProduct.Name;
            lblDescription.Text = "Description: " + selectedProduct.ShortDescription;
            lblUnitPrice.Text = "Price:$ " + selectedProduct.UnitPrice;
            lblSize.Text = "Size:$ " + selectedProduct.Size;
            Image.ImageUrl = "../Image/" + selectedProduct.ImageFile;
            rvQuantity.MaximumValue = selectedProduct.Quantity.ToString();
            rvQuantity.ErrorMessage = "The Quantity not avaliable: " + "Left with " + rvQuantity.MaximumValue.ToString() + " pairs!";
        }


        private Product GetSelectProducts()
        {
            //get the item from the database and strore it as Product object
            DataView productsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter = "Name = '" + ddl.SelectedValue + "'";
            DataRowView row = productsTable[0];
            Product p = new Product();
            p.ProductID = row["ItemID"].ToString();
            p.Name = row["Name"].ToString();
            p.ShortDescription = row["Description"].ToString();
            p.Size = row["Size"].ToString();
            p.UnitPrice = row["Price"].ToString();
            p.ImageFile = row["Image"].ToString();
            p.Quantity = (int)row["Quantity"];
            return p;

        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
  
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //Add new item and go to cart page
            if (Page.IsValid)
            {
                selectedProduct.Quantity = Int32.Parse(tbxQuantity.Text);
                ItemList.Add(selectedProduct);
                Session["Cart"] = ItemList;
                Response.Redirect("~/UserLayer/CartPage.aspx");
            }
        }
    }
}