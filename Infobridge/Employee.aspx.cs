using Infobridge.App_Code;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Infobridge
{
    public partial class Employee : System.Web.UI.Page
    {
        EmployeeDAL crud = new EmployeeDAL();
        private void GetAllEmps()
        {

            List<EmployeeInfo> emps = crud.GetEmployees();
            GridView1.DataSource = emps;
            Page.DataBind();
        }
            protected void Page_Load(object sender, EventArgs e)
        {
            GetAllEmps();


        }

        protected void BtSave_Click(object sender, EventArgs e)
        {
            try
            {
                string path = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("Images/") + path);
                path = "~/Images/" + path;

                EmployeeInfo emp = new EmployeeInfo();
                emp.Id = Convert.ToInt32(txtId.Text);
                    emp.Name = txtName.Text;
                    emp.Sex = txtSex.Text;
                    emp.Address = txtAddress.Text;
                    emp.Phone = txtPhone.Text;
                    emp.DateOfBirth = txtDob.Text;
                    emp.Image = path;
                    int result = crud.AddEmployee(emp);
                if (result >= 1) 
                {
                    GetAllEmps();
                    lblMsg.Text = "Record inserted";
                }
            

                
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        protected void lbUpdate_Click(object sender, EventArgs e)
        { try
            {
                string path = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("Images/") + path);
                path = "~/Images/" + path;

                EmployeeInfo emp = new EmployeeInfo();
                emp.Id = Convert.ToInt32(txtId.Text);
                    emp.Name = txtName.Text;
                    emp.Sex = txtSex.Text;
                    emp.Address = txtAddress.Text;
                    emp.Phone = txtPhone.Text;
                    emp.DateOfBirth = txtDob.Text;
                    emp.Image = path;
                    int result = crud.UpdateEmployee(emp);
                if (result >= 1) 
                {
                    GetAllEmps();
                    lblMsg.Text = "Record updated";
                }
            

                
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }

        protected void btDelete_Click(object sender, EventArgs e)
        {
            try
            {

                int res = crud.DeleteEmployee(Convert.ToInt32(txtId.Text));
                if (res > 0)
                {
                    GetAllEmps();
                }
                else
                {
                    lblMsg.Text = "Something went wrong";
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                EmployeeInfo emp = crud.GetEmployeeById(Convert.ToInt32(txtId.Text));
                if (emp.Id > 0)
                {
                    txtId.Text = emp.Name;
                    txtDob.Text = emp.DateOfBirth.ToString();
                    txtSex.Text = emp.Sex;
                    txtPhone.Text = emp.Phone;
                    txtAddress.Text = emp.Address.ToString();


                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
          
        }
    }
}
