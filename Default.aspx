<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmailSenderApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email Application</title>
     <!--Bootstrap CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
            <div class="row">
                <!--Left Column-->
                <div class="col"></div>
                <!--Middle Column-->
                <div class="col-6">
                    <div>
                        <asp:Label ID="lblEmailTo" class="form-label" runat="server" Text="Email To:"></asp:Label>
                        <asp:TextBox ID="txtEmailTo" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblCC" class="form-label" runat="server" Text="CC:"></asp:Label>
                        <asp:TextBox ID="txtCC" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblBC" class="form-label" runat="server" Text="BC:"></asp:Label>
                        <asp:TextBox ID="txtBC" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblSubject" class="form-label" runat="server" Text="Subject:"></asp:Label>
                        <asp:TextBox ID="txtSubject" class="form-control" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="btnSendEmail" class="btn btn-primary" runat="server" Text="Send Email" />
                    </div>
                </div>
                <!--Right Column-->
                <div class="col"></div>
            </div>
        </div>
    </form>
    <!--Bootstrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
