<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCliente.aspx.cs" Inherits="ProjetoMVCB32.UI.frmCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="../Content/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
		<div class="container-fluid">
    <form id="form1" runat="server">
			<div>
				CPF:&nbsp;
				<asp:TextBox ID="txt_cpfB32" runat="server" required class="form-control" TextMode="Number"></asp:TextBox>
			</div>
			<div>
				Nome Completo:&nbsp;
				<asp:TextBox ID="txt_nomeB32" required class="form-control" runat="server"></asp:TextBox>
			</div>
			<div>
				Nome da Mãe:&nbsp;
				<asp:TextBox ID="txt_nomemaeB32" required class="form-control" runat="server"></asp:TextBox>
			</div>
			<p>
				<br />
				<asp:Button ID="btn_enviarB32" class="btn btn-success" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
			</p>
	</form>
		</div>
	    &nbsp;&nbsp;&nbsp;&nbsp;
	    <asp:Label ID="txtMsg" runat="server" Visible="False" CssClass="alert-danger"></asp:Label>
</body>
</html>
