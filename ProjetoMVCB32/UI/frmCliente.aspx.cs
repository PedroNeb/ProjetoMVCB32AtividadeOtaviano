using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ProjetoMVCB32.BLL;
using ProjetoMVCB32.DTO;

namespace ProjetoMVCB32.UI
{
    public partial class frmCliente : System.Web.UI.Page
    {
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Pessoa obj = new Pessoa();

            obj.Nome = txt_nomeB32.Text;
            obj.Cpf = txt_cpfB32.Text;
            obj.NomeMae = txt_nomemaeB32.Text;

            tblClienteBLL bllCliente = new tblClienteBLL();
            if (bllCliente.Autenticar(obj.Nome, obj.Cpf, obj.NomeMae))
            {
                txtMsg.Visible = true;
                txtMsg.Text = "Beneficiário Localizado no Banco de dados. Processo em Análise";
            }
            else
            {
                txtMsg.Visible = true;
                txtMsg.Text = "Beneficiário Não Localizado no Banco de dados. Benefício Negado";
            }
        }
    }
}
