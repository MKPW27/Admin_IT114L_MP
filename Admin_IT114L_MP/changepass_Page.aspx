<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepass_Page.aspx.cs" Inherits="Admin_IT114L_MP.changePasswordPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Admin Login - Barangay San Isidro Pet Vaccination Program</title>
    <!-- Tailwind -->
    <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>

    <style data-purpose="background-overlay">
        .bg-pattern {
            background-color: #f8fafc;
            background-image: radial-gradient(#3b82f6 0.5px, transparent 0.5px), radial-gradient(#3b82f6 0.5px, #f8fafc 0.5px);
            background-size: 20px 20px;
            background-position: 0 0,10px 10px;
            opacity: 0.1;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        .glass-effect {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(4px);
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1), 0 8px 10px -6px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body class="min-h-screen flex items-center justify-center p-4 bg-slate-50 relative overflow-hidden">
    <form id="form1" runat="server" class="w-full max-w-md">
        <div aria-hidden="true" class="bg-pattern"></div>

        <!-- Login Container -->
        <main class="glass-effect rounded-2xl overflow-hidden border border-slate-200">

            <section class="p-8 text-center bg-white border-b border-slate-100">
                <div class="mb-4 flex justify-center">
                    <asp:Image ID="imgLogo" runat="server" class="w-32 h-32 object-contain drop-shadow-md" ImageUrl="~/imgs/logo.png" />
                </div>
                <h1 class="text-2xl font-bold text-slate-800">Admin Portal</h1>
                <p class="text-slate-500 mt-2 font-medium">Pet Vaccination Admin Panel</p>
                <p class="text-xs text-slate-400 uppercase tracking-widest mt-1">Barangay San Isidro, Cabuyao City</p>
            </section>

            <!-- Login Form -->
<section class="p-8">
    <asp:Panel runat="server">

        <!-- Old Password -->
        <div>
            <asp:Label ID="lblOldPassword" class="block text-sm font-semibold text-slate-700 mb-2" runat="server" Text="Old Password: ">
                <asp:RequiredFieldValidator ID="rfvOldPassword" runat="server" ErrorMessage="*" ControlToValidate="txtOldPassword" ForeColor="red"></asp:RequiredFieldValidator>
            </asp:Label>
            <div class="relative">
                <asp:TextBox ID="txtOldPassword" runat="server"
                    class="w-full px-4 py-3 rounded-lg border border-slate-300 focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition duration-200 outline-none placeholder:text-slate-400"
                    TextMode="Password" Placeholder="Enter old password" />
            </div>
        </div>

        <!-- New Password -->
        <div class="mt-4">
            <asp:Label ID="lblNewPassword" class="block text-sm font-semibold text-slate-700 mb-2" runat="server" Text="New Password: ">
                <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ErrorMessage="*" ControlToValidate="txtNewPassword" ForeColor="red"></asp:RequiredFieldValidator>
            </asp:Label>
            <div class="relative">
                <asp:TextBox ID="txtNewPassword" runat="server"
                    class="w-full px-4 py-3 rounded-lg border border-slate-300 focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition duration-200 outline-none placeholder:text-slate-400"
                    TextMode="Password" Placeholder="Enter new password" />
            </div>
        </div>

        <!-- Confirm New Password -->
        <div class="mt-4">
            <asp:Label ID="lblConfirmPassword" class="block text-sm font-semibold text-slate-700 mb-2" runat="server" Text="Re-enter New Password: ">
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ErrorMessage="*" ControlToValidate="txtConfirmPassword" ForeColor="red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPasswords" runat="server"
                    ControlToCompare="txtNewPassword"
                    ControlToValidate="txtConfirmPassword"
                    ErrorMessage="Passwords do not match"
                    ForeColor="red" />
            </asp:Label>
            <div class="relative">
                <asp:TextBox ID="txtConfirmPassword" runat="server"
                    class="w-full px-4 py-3 rounded-lg border border-slate-300 focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition duration-200 outline-none placeholder:text-slate-400"
                    TextMode="Password" Placeholder="Re-enter new password" />
            </div>
        </div>

        <!-- Buttons -->
        <div class="mt-6">
            <asp:Button ID="btnChangePass" runat="server" Text="Change Password"
                class="w-full bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-4 rounded-lg shadow-lg shadow-blue-200 transition duration-200 transform active:scale-[0.98] flex items-center justify-center gap-2"
                OnClick="btnChangePass_Click" />
        </div>

    </asp:Panel>
</section>

        <div class="mt-8 flex justify-center items-center gap-4 opacity-60 grayscale hover:grayscale-0 transition-all duration-300">
            <div class="flex items-center gap-1">
                <svg class="w-4 h-4 text-slate-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path></svg>
                <span class="text-[10px] font-bold text-slate-600 uppercase">Privacy Protected</span>
            </div>
        </div>
    </form>
</body>
</html>
