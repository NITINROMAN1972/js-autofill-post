<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Portal_HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 393px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Pension AutoFill using JavaScript<br />
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Date Of Birth (DOB)</td>
                <td>
                    <asp:TextBox ID="DOB" type="date" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Pay Commission</td>
                <td>
                    <asp:TextBox ID="ddPC" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Basic Pay</td>
                <td>
                    <asp:TextBox ID="Pn7thPc" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Pension After Commutation</td>
                <td>
                    <asp:TextBox ID="PnCom" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">10% increased above 80 years</td>
                <td>
                    <asp:TextBox ID="Pn10Per80Yr" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">15% increased above 85 years</td>
                <td>
                    <asp:TextBox ID="Pn15Per85Yr" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">20% increased above 90 years</td>
                <td>
                    <asp:TextBox ID="Pn20Per90Yr" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">DA @42%</td>
                <td>
                    <asp:TextBox ID="PnDa34Per" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">10% increased on DA above 80 years</td>
                <td>
                    <asp:TextBox ID="PnDaInc10Per" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">15% increased on DA above 85 years</td>
                <td>
                    <asp:TextBox ID="PnDaInc15Per" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">20% increased on DA above 90 years</td>
                <td>
                    <asp:TextBox ID="PnDaInc20Per" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Gross Penstion</td>
                <td>
                    <asp:TextBox ID="PnGrsAmt" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Income Tax</td>
                <td>
                    <asp:TextBox ID="PnTax" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Excess Pension Recovery</td>
                <td>
                    <asp:TextBox ID="PnExRec" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Installment No</td>
                <td>
                    <asp:TextBox ID="PnInstNo" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Total Deduction</td>
                <td>
                    <asp:TextBox ID="PnTotDed" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Net Payable Pension</td>
                <td>
                    <asp:TextBox ID="PnPayRs" runat="server" onchange="AutoFillPension()"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>

    <script src="AutoFill.js"></script>
</body>
</html>
