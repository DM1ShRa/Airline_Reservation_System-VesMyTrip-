<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="SignIN.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"/>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="book.css"/>
    <title>Booking</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper bg-white">
            <div class="form-group border-bottom d-flex align-items-center justify-content-between flex-wrap">
                <label class="option my-sm-0 my-2">
                    <input type="radio" name="radio" checked>Round Trip
                    <span class="checkmark"></span>
                </label>
                <label class="option my-sm-0 my-2">
                    <input type="radio" name="radio">One Way
                    <span class="checkmark"></span>
                </label>
                <div class="d-flex align-items-center my-sm-0 my-2">
                    <a href="#" class="text-decoration-none">
                        Multi-city/Stopovers <span class="fas fa-angle-right ps-2 text-primary"></span>
                    </a>
                </div>
            </div>
            <div class="form-group d-sm-flex margin">
                <div class="d-flex align-items-center flex-fill me-sm-1 my-sm-0 my-4 border-bottom position-relative">
                    <asp:TextBox ID="Fromtext" placeholder="From" runat="server"></asp:TextBox>
                    <div class="label" id="from"></div>
                    <span class="fas fa-dot-circle text-muted"></span>
                </div>
                <div class="d-flex align-items-center flex-fill ms-sm-1 my-sm-0 my-4 border-bottom position-relative">
                    <asp:TextBox ID="Totext" placeholder="To" runat="server"></asp:TextBox>
                    <div class="label" id="to"></div>
                    <span class="fas fa-map-marker text-muted"></span>
                </div>
            </div>
            <div class="form-group d-sm-flex margin">
                <div class="d-flex align-items-center flex-fill me-sm1 my-sm-0 border-bottom position-relative">
                    <input type="date" id="depart" name="Departure">
                    <div class="label" id="depart"></div>
                </div>
                <div class="d-flex align-items-center flex-fill ms-sm-1 my-sm-0 my-4 border-bottom position-relative">
                    <input type="date" id="return" name="Return">
                    <div class="label" id="return"></div>
                </div>
            </div>
            <div class="form-group border-bottom d-flex align-items-center position-relative">
                <asp:TextBox ID="Passtext" placeholder="Passenger(s)" runat="server"></asp:TextBox>
                <div class="label" id="psngr"></div>
                <span class="fas fa-users text-muted"></span>
            </div>
            <div class="form-group my-3">
                <asp:Button ID="Button1" runat="server" Text="Search Flights" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" Text="Cannot Find Flights" ForeColor="IndianRed"></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <br />
            </div>
        </form>

</body>
</html>
