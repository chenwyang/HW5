<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="./style.css"/> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Chenwei's Mortgage Calculator</h1>
        
        <br />
     
        Loan Amount*:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        
        <asp:RequiredFieldValidator ID="val_amt" runat="server" ErrorMessage="Please enter your loan amount." ControlToValidate="tbLoanAmt"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest*: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
       
        <asp:RequiredFieldValidator ID="val_int" runat="server" ErrorMessage="Please enter your annual interest rate." ControlToValidate="tbAnnualInterest"></asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs)*: <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="val_term" runat="server" ErrorMessage="Please enter your loan term." ControlToValidate="tbLoanTerm"></asp:RequiredFieldValidator>
        
        <br />
        <br />
        * Required fileds<br />
        <br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        <br />
        <br />
        <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="77px" />
        
        <br />
   
        <% If Not IsPostBack Then%>
            <p>Welcome to my mortgage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you. </p>
        
        <% Else%>
        
            Your monthly payment is: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
            <br /><br />
        
            <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
           
            </asp:GridView> 
        <% End If%>    
        </div>
    </form>
</body>
</html>
