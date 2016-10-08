<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PrimerParcialPropietaria2Blog.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Formulario de Registro de Estudiantes</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"></link>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-offset-3   login-form padding20 block-shadow">
                <form id="form1" runat="server">


                    <asp:Label runat="server" ID="lblMessage" CssClass="alert alert-danger" Visible="False"></asp:Label>
                    <h1 class="text-light">Iniciar Sesion </h1>
                    <hr class="thin" />
                    <br />

             


                    <div class="form-group input-control password full-size">
                        <label>Nombre</label>
                        <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="red" runat="server" ID="RequiredFieldValidator1" ErrorMessage="Debe de digitar un nombre de usuario"
                            ControlToValidate="txtName">
                        </asp:RequiredFieldValidator>
                    </div>
             <div class="form-group input-control password full-size">
                        <label>Apellido</label>
                        <asp:TextBox runat="server" ID="txtLastname" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="red" runat="server" ID="RequiredFieldValidator3" ErrorMessage="Debe de digitar un apellido"
                            ControlToValidate="txtLastname">
                        </asp:RequiredFieldValidator>
                    </div>



                           <div class="form-group">
                        <label>Edad</label>

                        <asp:TextBox runat="server" ID="age" TextMode="Number"  min="1" step="1"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="txtYear" ControlToValidate="age" ForeColor="Red" ErrorMessage="Debe de ser Mayor de edad"></asp:RequiredFieldValidator>
                    </div>
                           <div class="form-group input-control password full-size">
                        <label>Profesion</label>
                        <asp:TextBox runat="server" ID="txtCareer" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="red" runat="server" ID="RequiredFieldValidator5" ErrorMessage="Debe de digitar una profesion"
                            ControlToValidate="txtCareer">
                        </asp:RequiredFieldValidator>
                    </div>


                    

                    <div class="form-group input-control password full-size">
                        <label>Nombre de Usuario</label>
                        <asp:TextBox runat="server" ID="txtusername" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="red" runat="server" ID="reqUsername" ErrorMessage="Debe de digitar un nombre de usuario"
                            ControlToValidate="txtusername">
                        </asp:RequiredFieldValidator>
                    </div>



                    <div class="form-group input-control password full-size">
                        <label>Contraseña</label>
                        <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="reqPass" ForeColor="red" ErrorMessage="Por Favor Introducir Contrasena" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                    </div>


                    <div class="form-group input-control password full-size">
                        <label>Correo Electronico </label>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="red" runat="server" ID="RequiredFieldValidator2" ErrorMessage="Debe de digitar un Correo"
                            ControlToValidate="txtEmail">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ControlToValidate="txtEmail"
                            ErrorMessage="Se debe de tener un mail valido" ValidationExpression="^[a-zA-Z0-9.!#$%&amp;'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"></asp:RegularExpressionValidator>

                    </div>


                    <div class="form-group input-control password full-size">
                        <label>Telefono</label>
                        <asp:TextBox runat="server" ID="txtTelephone" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="red" runat="server" ID="RequiredFieldValidator4" ErrorMessage="Debe de digitar un telefono valido"
                            ControlToValidate="txtTelephone">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="reqRegexAccount" ControlToValidate="txtTelephone"
                            ErrorMessage="No se cumple el formato 999-999999-9" ValidationExpression="[0-9]{3}-[0-9]{3}-[0-9]{4}"></asp:RegularExpressionValidator>

                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Nacionalidad"></asp:Label>
                        <asp:DropDownList CssClass="form-control" runat="server" ID="dpNationality">
                            <asp:ListItem Text="Dominicano" Value="Dominicano"></asp:ListItem>
                            <asp:ListItem Text="Haitiano" Value="Haitiano"></asp:ListItem>
                            <asp:ListItem Text="Cubano" Value="Cubano"></asp:ListItem>

                        </asp:DropDownList>
                    </div>


                    <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-success" Text="Iniciar Sesion" OnClick="LogIn"></asp:Button>

                </form>
            </div>
    </div>
    </div>


</body>
