<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/PaginaBase.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="GeoRuin.WebForms.Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/css/style.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="panel mb25" style="min-height:79vh; margin-bottom:0;">
        <div class="panel-heading border"><i class="fa fa-user"></i> Perfil de Utilizador</div>
        <div class="panel-body">
            <div class="row no-margin" style="padding-top:20px; padding-bottom:20px;">

                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div style="text-align:center; padding-top:20px;">
                        <div class="box" style="margin:0 auto;">
                            <div class='wave -one'></div>
                            <div class='wave -two'></div>
                            <div class='wave -three'></div>
                            <div class='title'>
                                <img id="ImgUtil" runat="server" class="img-circle" height="150" />
                                <div style="margin-top:90px;">   
                                    <p id="NomeUtil" runat="server" style="color:black; font-size:16px; color:#616161;"></p>
                                </div>                       
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12" style="padding: 20px 0 10px 10px;">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Primeiro Nome</label>
                            <div class="col-sm-4">
                                <asp:TextBox ID="TBPrimeiroNome" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Último Nome</label>
                            <div class="col-sm-4">
                                <asp:TextBox ID="TBUltimoNome" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-4">
                                <asp:TextBox ID="TBEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Imagem</label>
                            <div class="col-sm-4" style="padding-top: 5px;">
                                <asp:FileUpload ID="UploadFile" runat="server" />
                            </div>
                        </div>
                        
                    </div>
                </div>

                <div class="pull-right" style="margin-top: 20px; position: absolute; bottom: 10px; right: 10px;">
                    <asp:Button ID="BTGuardar" runat="server" Text="Guardar" CssClass="btn btn-geo" OnClick="BTGuardar_Click" />
                </div>

            </div>
            
        </div>
    </div>

</asp:Content>
