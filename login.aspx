<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f4f4f4;
            padding: 15px;
        }

        .login-form {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            transition: all 0.3s ease;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-submit {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            width: 100%;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: dodgerblue;
        }

        .error {
            color: red;
            font-size: 0.9em;
            /*margin-top: 10px;*/
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }

        @media (max-width: 768px) {
            .login-form {
                padding: 15px;
                max-width: 90%;
            }
        }

        @media (max-width: 480px) {
            h2 {
                font-size: 20px;
            }

            .form-control {
                padding: 8px;
            }

            .btn-submit {
                padding: 8px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="login-form">
                <h2>Login</h2>
                <div class="form-row">
                    <div class="form-group">
                        <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Email is required" CssClass="error" />
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <asp:Label ID="lblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword"></asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="Password is required" CssClass="error" />
                    </div>
                </div>
                <asp:Button ID="btnLogin" OnClick="btnLogin_Click" runat="server" Text="Login" CssClass="btn-submit" />
                <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>
                  <div class="register-link">
                    <p>Don't have an account? <a href="index.aspx">Register here</a>.</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
