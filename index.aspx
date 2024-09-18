<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registration Form</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="container">
                <div id="registrationForm" runat="server" class="registration-form">
                    <h2>Registration Form</h2>
                    <div class="form-row">
                        <div class="form-group">
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name" AssociatedControlID="txtFirstName"></asp:Label>
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                                ErrorMessage="First Name is required" CssClass="error" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name" AssociatedControlID="txtLastName"></asp:Label>
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                                ErrorMessage="Last Name is required" CssClass="error" />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Email is required" CssClass="error" />
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                ValidationExpression="^[a-z0-9]+@gmail\.com$" ErrorMessage="Invalid Email format"  CssClass="error-up error" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblPhone" runat="server" Text="Phone" AssociatedControlID="txtPhone"></asp:Label>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone"
                                ErrorMessage="Phone is required" CssClass="error" />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                                ErrorMessage="Password is required" CssClass="error" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" AssociatedControlID="txtConfirmPassword"></asp:Label>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                                ErrorMessage="Confirm Password is required" CssClass="error" />
                            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
                                ErrorMessage="Passwords do not match" CssClass="error-up error " />
                        </div>
                        </div>
                     

                        <div class="form-row">
                            <div class="form-group">
                                <asp:Label ID="lblState" runat="server" Text="State" AssociatedControlID="ddlState"></asp:Label>
                                <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" CssClass="statebox form-control">
                                    <asp:ListItem Text="Select State" Value="" />
                                </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="ddlState"
                          InitialValue="" ErrorMessage="State is required" CssClass="error" ></asp:RequiredFieldValidator>
                              
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblCity" runat="server" Text="City" AssociatedControlID="ddlCity"></asp:Label>
                                <asp:DropDownList ID="ddlCity" runat="server" CssClass="statebox form-control">
                                    <asp:ListItem Text="Select City" Value="" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="ddlCity"
                                    InitialValue="" ErrorMessage="City is required" CssClass="error" />
                            </div>
                        </div>
                    
                    <asp:Button ID="btnSubmit" runat="server" Text="Register" CssClass="btn-submit" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
