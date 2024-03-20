<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThemTinTuc.aspx.cs" Inherits="WebQLNS.ThemNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2 class="text-center">Thêm tin tức</h2>
    <div class="row mt-3 mb-2 ">
        <div class="col-md-2">Tiêu đề</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtTieuDe" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Tóm tắt</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtTomTat" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Nội dung</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtNoiDung" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Hình đại diện</div>
        <div class="col-md-10">
        <asp:FileUpload ID="FHinh" runat="server" />
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Ngày đăng</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtNgayDang" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Trạng thái</div>
        <div class="col-md-10 ">
            <asp:CheckBox ID="chkTrangThai" Text="Hiện" Checked="true" runat="server" />
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Thể loại</div>
        <div class="col-md-10">
            <asp:DropDownList ID="ddlTheLoai" runat="server" CssClass="form-control" DataSourceID="dsTheLoai" DataTextField="TenTheLoai" DataValueField="Id"></asp:DropDownList>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2"></div>
        <div class="col-md-10">
            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary"/>
            <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <asp:SqlDataSource ID="dsTheLoai" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        SelectCommand="SELECT * FROM [TheLoai]"></asp:SqlDataSource>
</asp:Content>
