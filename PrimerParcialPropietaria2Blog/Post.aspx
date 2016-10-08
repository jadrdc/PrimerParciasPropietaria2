<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="PrimerParcialPropietaria2Blog.Post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog</title>
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
            <div class="col-lg-6 col-md-offset-3">
                <form id="form1" runat="server">
                    
                    
                    <div class="form-group input-control password full-size">
                        <label>Post a Guardar</label>
                        <asp:TextBox runat="server" ID="txtPost" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="red" runat="server" ID="postValidation" ErrorMessage="No debe estar vacio"
                            ControlToValidate="txtPost">
                        </asp:RequiredFieldValidator>
                    </div>
                    
              <asp:Button  runat="server" ID="btnPost"  CssClass="btn btn-default btn-success" Text="Postear" OnClick="PostInfo"/>
        <asp:HyperLink runat="server" ID="url" Text="Cerrar Session" NavigateUrl="log.aspx"></asp:HyperLink>
                    <asp:Repeater runat="server" ID="list">
                        
                        <ItemTemplate><div>
                            <strong> <%# Eval("Data") %></strong>
                        </div>
                        </ItemTemplate>

                    </asp:Repeater>


                </form>
            </div>

        </div>
    </div>
</body>
</html>
