﻿<%@ Page Title="" Language="C#" MasterPageFile="~/NJ_ClientAdmin.Master" AutoEventWireup="true" CodeBehind="UserDetail.aspx.cs" Inherits="Excel.UserDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
    <style>
        .input-group {
            float: left !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="content">
        <div class="row">
            <div class="col-lg-12" style="min-height: 100px !important;">
                <!-- Traffic sources -->

                <div class="panel panel-flat">
                    <div class="panel-heading">
                        <div class="col-md-12 homeheader">
                            User Detail
                        </div>
                    </div>
                    <%-- <div class="col-lg-12">
                        <a onclick="BackToUser()" href="#">
                            <img src="Images/back-button.jpg" height="50px" width="100px"/>

                        </a>
                    </div>--%>

                    <div class="panel-body gridtopMargin">
                        <div class="col-md-12">
                            <div class="form-group">
                                <asp:HiddenField ID="hdnId" runat="server" />
                                <asp:HiddenField ID="hdIsFirst" runat="server" />
                                <div class="col-md-2">
                                    <label>First Name:</label>
                                </div>
                                <div class="col-md-3">
                                    <label class="form-control" id="txtFirstName"></label>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>Last Name:</label>
                                </div>
                                <div class="col-md-3">
                                    <label class="form-control" id="txtLastName"></label>
                                </div>
                                <div class="ClientDetailEditTextPadding">

                                    <div class="col-md-2">
                                        <label>Comment</label>
                                    </div>
                                    <div class="col-md-3">
                                        <textarea id="txtComment" class="form-control require"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>Court Name:</label>
                                </div>
                                <div class="col-md-3">
                                    <label class="form-control" id="txtCOurtName"></label>


                                </div>
                            </div>



                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>Phone:</label>
                                </div>
                                <div class="col-md-3">
                                    <input id="txtPhone" class="form-control require" type="text" />
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>Email:</label>
                                </div>
                                <div class="col-md-3">
                                    <input id="txtEmail" class="form-control require" type="text" />

                                </div>
                            </div>





                            <div class="ClientDetailSaleBy" style="padding-top: 55px;">
                                <div class="col-md-2">
                                    <label>Sale by</label>
                                </div>
                                <div class="col-md-3">
                                    <select id="ddlUsers" class="form-control">
                                    </select>
                                    <asp:HiddenField ID="UserId" runat="server" />

                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>Source of communication:</label>
                                </div>
                                <div class="col-md-3">

                                    <input type="text" id="txtSourceOfCoumm" class="form-control" placeholder="Source Of Communication" />

                                </div>
                            </div>
                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>Address1:</label>
                                </div>
                                <div class="col-md-9">

                                    <label class="form-control" id="txtAddress1" />

                                </div>
                            </div>
                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>Address2:</label>
                                </div>
                                <div class="col-md-9">
                                    <label id="txtAddress2" class="form-control" />

                                </div>
                            </div>
                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>City</label>
                                </div>
                                <div class="col-md-2">
                                    <label id="txtCity" class="form-control" />
                                </div>
                                <div class="col-md-1">
                                    <label>State</label>
                                </div>
                                <div class="col-md-2">
                                    <label id="txtState" class="form-control" />

                                </div>
                                <div class="col-md-1">
                                    <label>Zip</label>
                                </div>
                                <div class="col-md-2">
                                    <label id="txtZip" class="form-control" />

                                </div>
                            </div>
                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>Description:</label>
                                </div>
                                <div class="col-md-9">
                                    <label id="txtDescription" class="form-control" style="width: 55%"></label>

                                    <%--<input class="form-control" cols rows="10" type="text" />--%>
                                </div>
                            </div>
                            <div class="ClientDetailEditTextPadding" style="margin-top: 2%;">
                                <div class="col-md-2">
                                    <label>DOB</label>
                                </div>
                                <div class="col-md-3">
                                    <label id="TxtDOB" class="form-control" />

                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>MI</label>
                                </div>
                                <div class="col-md-3">
                                    <label id="txtMI" class="form-control" />

                                </div>
                            </div>
                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>Violation:</label>
                                </div>
                                <div class="col-md-3">
                                    <label id="txtViolation" class="form-control" />

                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>DateIssued:</label>
                                </div>
                                <div class="col-md-3">
                                    <label id="txtDateissued" class="form-control datepicker-menus" />

                                </div>
                            </div>

                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>Salutation:</label>
                                </div>
                                <div class="col-md-3">
                                    <label id="txtSalutation" class="form-control" />

                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>Summons:</label>
                                </div>
                                <div class="col-md-3">
                                    <label id="txtSummons" class="form-control" />

                                </div>
                            </div>


                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>NJ_CourtId:</label>
                                </div>
                                <div class="col-md-3">
                                    <label id="txtNjCourtId" class="form-control" />

                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>Muncipality:</label>
                                </div>
                                <div class="col-md-3">
                                    <label id="txtMuncipality" class="form-control" />

                                </div>
                            </div>


                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>Complaint:</label>
                                </div>
                                <div class="col-md-3">
                                    <label id="txtComplaint" class="form-control" />

                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>Title:</label>

                                </div>
                                <div class="col-md-3">
                                    <label id="txtTitle" class="form-control" />
                                </div>
                            </div>

                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>PaymentAgreement:</label>

                                </div>
                                <div class="input-group col-md-3">
                                    <span class="input-group-addon">$</span>
                                    <input id="txtPaymentTotal" onblur='GetRemainingPayment()' class="form-control require" type="text" />
                                </div>

                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>PaymentType:</label>
                                </div>
                                <div class="col-md-3">
                                    <select id="ddlPayment" class="user-field-txt require form-control require">
                                        <option value="0">Select</option>
                                        <option value="Cash">Cash</option>
                                        <option value="Visa">Visa</option>
                                        <option value="MC">MC</option>
                                        <option value="Amex">Amex</option>
                                    </select>

                                </div>
                            </div>


                            <div class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>PaymentPaid:</label>
                                </div>
                                <div class="input-group col-md-3">
                                    <span class="input-group-addon">$</span>
                                    <input class="form-control require" id="txtPaymentPaid" onblur='GetRemainingPayment()' type="text" />

                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>PaymentBalance:</label>
                                </div>
                                <div class="input-group col-md-3">
                                    <span class="input-group-addon">$</span>
                                    <input class="form-control require" disabled="disabled" id="txtPaymentBalance" type="text" />

                                </div>
                            </div>



                            <div id="dvCardDetails" class="ClientDetailEditTextPadding">
                                <div class="col-md-2">
                                    <label>CardNo:</label>
                                </div>
                                <div class="col-md-3">
                                    <input id="txtCardNo" class="form-control require" type="text" />
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label>ExpDate:</label>
                                </div>
                                <div class="col-md-3">
                                    <%--   <input id="txtExpDate" class="form-control hasDatepicker" type="text" />--%>
                                    <input type='number' max='12' min='1' onblur='validateExpireyDate()' id='txtExpirayDateMonth' maxlength='2' oninput='javascript: if (this.value.length > 2) this.value = this.value.slice(0, this.maxLength);' class='user-field-txtExp require' placeholder='MM' />&nbsp;/&nbsp<input type='text' id='txtExpirayDateYear' class='user-field-txtExp require ' maxlength='2' onblur='validateExpireyDate()' placeholder='YY' />

                                </div>
                            </div>

                            <div class="ClientDetailEditTextPadding">
                                <div id="dvCvv">
                                    <div class="col-md-2">
                                        <label>CVV:</label>
                                    </div>
                                    <div class="col-md-3">
                                        <input id="txtCVV" class="form-control require" maxlength='3' type="text" />

                                    </div>
                                    <div class="col-md-1"></div>
                                </div>
                                <div class="col-md-2">
                                    <label>List Type:</label>
                                </div>
                                <div class="col-md-3">
                                    <label class="form-control" id="txtListType"></label>
                                </div>
                            </div>




                        </div>


                        <div class="ClientDetailEditTextPadding">
                            <div class="col-md-2">
                            </div>
                            <div class="col-md-2">
                            </div>
                            <div class="col-md-2">
                                <input type='button' id="btnMarkClient" class='btn btn-primary btn-mark' value='Mark as Client' />
                            </div>
                            <div class="col-md-2">
                                <input type='button' id="btnPotentialClient" class='btn btn-primary btn-mark' value='Mark as potential Client' />
                            </div>
                            <div class="col-md-2">
                            </div>
                            <div class="col-md-2">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>

    <asp:HiddenField ID="hdnSearch" runat="server" />
    <asp:HiddenField ID="hdnContains" runat="server" />
    <script src="Scripts/jquery-1.7.1.min.js"></script>
    <script src="Scripts/jquery-1.7.1.js"></script>

    <script>
        $(document).ready(function () {
            BindDDLgetAllUser();
            $('.loadercont').fadeOut();
            var id = $('#<%= hdnId.ClientID %>').val()
            debugger;
            if (id != "") {
                userDetail();
            }
            else {
                UserDetailApi();
            }

        });

        function BindDDLgetAllUser() {
            debugger;
            Id = $('#<%= UserId.ClientID %>').val();
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "/UserDetail.aspx/GetAllEmployees",
                data: "",
                dataType: "Json",
                success: function (response) {
                    debugger;
                    console.log(response);
                    for (var i = 0; i < response.d.length; i++) {
                        ddlUser = $('#ddlUsers');
                        ddlUser.append('<option value=' + response.d[i].tblUserId + '>' + response.d[i].First_Name + '</option>');
                        if (response.d[i].tblUserId == Id) {

                            $('#ddlUsers').val(response.d[i].tblUserId);
                        }
                    }
                },
                error: function (response) {
                }
            });

        }

        function userDetail() {
            var id = $('#<%= hdnId.ClientID %>').val();
            var IsPotential = $('#<%= hdIsFirst.ClientID %>').val();
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "/UserDetail.aspx/UserDetails",
                data: JSON.stringify({ id: id, IsPotential: IsPotential }),
                dataType: "Json",
                success: function (response) {

                    console.log(response.d)

                    $('#txtFirstName').html(response.d.F_Name);
                    $('#txtLastName').html(response.d.L_Name);
                    $('#txtListType').html(response.d.List_Type);
                    $('#txtCOurtName').html(response.d.Court_Name);
                    $('#txtFileDate').html(response.d.File_Date);
                    $('#txtCourtDate').html(response.d.CourtDate);
                    $('#txtAddress1').html(response.d.Address1);
                    $('#txtAddress2').html(response.d.Address2);
                    $('#txtCity').html(response.d.City);
                    $('#txtState').html(response.d.ST);
                    $('#txtZip').html(response.d.ZIP);
                    $('#txtDescription').html(response.d.Description);
                    $('#txtMI').html(response.d.MI);
                    $('#txtViolation').html(response.d.Violation);
                    $('#txtDateissued').html(response.d.DateIssued);
                    $('#txtSalutation').html(response.d.Salutation);
                    $('#txtSummons').html(response.d.Summons);
                    $('#txtNjCourtId').html(response.d.NJ_CourtID);
                    $('#txtMuncipality').html(response.d.Muncipality);
                    $('#txtComplaint').html(response.d.Complaint);
                    $('#txtTitle').html(response.d.Title);
                    $('#TxtDOB').html(response.d.DOB);
                    $("#txtPhone").val(response.d.Phone);
                    $("#txtEmail").val(response.d.Email);
                    $('#txtSourceOfCoumm').val(response.d.SourceComm);
                    if (response.d.IsAddedBy > 0) {
                        $('#ddlUsers').val(response.d.IsAddedBy);
                    }
                    $("#ddlPayment").change();
                    if (response.d.IsPotential) {
                        $('#btnPotentialClient').hide();
                    }
                    if (response.d.IsUser) {
                        $('#btnMarkClient').hide();
                        $('#btnPotentialClient').hide();
                    }
                },
                error: function (response) {
                }
            });
        }


        $("#txtZip").keypress(function (e) {

            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                return false;
            }
        });
        $("#txtPhone").keypress(function (e) {
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                return false;
            }
        });

        $("#txtPaymentTotal").keypress(function (e) {
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                return false;
            }
        });

        $("#txtPaymentPaid").keypress(function (e) {
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                return false;
            }
        });

        $("#txtCVV").keypress(function (e) {
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                return false;
            }
        });

        $("#txtExpirayDateYear").keypress(function (e) {
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                //display error message
                return false;
            }
        });

        function ValidateEmail(email) {
            // Validate email format
            var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            return expr.test(email);
        };

        function GetRemainingPayment() {
            var Total = $("#txtPaymentTotal").val();
            var Paid = $("#txtPaymentPaid").val();
            var Balance = Total - Paid;
            $("#txtPaymentBalance").val(Balance);
        };


        function validateExpireyDate() {
            var Month = $('#txtExpirayDateMonth').val();
            var Year = $('#txtExpirayDateYear').val();

            if (Month != "") {
                if (!$.isNumeric(Month)) {
                    bootbox.alert('Please Type only numeric Value in Month')
                    $('#txtExpirayDateMonth').val('');
                    $('.loadercont').fadeOut();
                    return;
                }
                if (Month > 12) {
                    bootbox.alert("value must be less then or equal to 12")
                    $('#txtExpirayDateMonth').val('');
                    return;
                }
            }
            if (Year != "") {
                if (!$.isNumeric(Year)) {
                    bootbox.alert('Please Type only numeric Value in Year')
                    $('#txtExpirayDateYear').val('');
                    $('.loadercont').fadeOut();
                    return;
                }
            }
        }

        $('#btnMarkClient').click(function () {
            id = $('#<%= hdnId.ClientID %>').val()
            debugger;
            $('.loadercont').fadeIn();

            var FName = $('#txtFirstName').text().trim();
            var LName = $('#txtLastName').text().trim();
            var comment = $('#txtComment').val().trim();
            var CourtName = $('#txtCOurtName').text().trim();
            var Phone = $("#txtPhone").val().trim();
            var Email = $("#txtEmail").val().trim();
            var Address1 = $('#txtAddress1').text().trim();
            var Address2 = $('#txtAddress2').text().trim();
            var City = $('#txtCity').text().trim();
            var State = $('#txtState').text().trim();
            var Zip = $('#txtZip').text().trim();
            var Description = $('#txtDescription').text().trim();
            var DOB = $('#TxtDOB').text().trim();
            var MI = $('#txtMI').text().trim();
            var Violation = $('#txtViolation').text().trim();
            var Dateissued = $('#txtDateissued').text().trim();
            var Salutation = $('#txtSalutation').text().trim();
            var Summons = $('#txtSummons').text().trim();
            var CourtID = $('#txtNjCourtId').text().trim();
            var Muncipality = $('#txtMuncipality').text().trim();
            var Complaint = $('#txtComplaint').text().trim();
            var Title = $('#txtTitle').text().trim();
            var ListType = $('#txtListType').text().trim();
            var sourceOfComm = $('#txtSourceOfCoumm').val();
            var isAddedBy = $('#ddlUsers').val();

            var Type = $("#ddlPayment").val().trim();
            var Total = $("#txtPaymentTotal").val().trim();
            var Paid = $("#txtPaymentPaid").val().trim();
            var Balance = $("#txtPaymentBalance").val().trim();
            var Cardno = $("#txtCardNo").val().trim();
            var CVV = $("#txtCVV").val().trim();


            var Month = $('#txtExpirayDateMonth').val().trim();
            var Year = $('#txtExpirayDateYear').val().trim();

            var PotentialClient = false;
            var CardExpireyDate = "";
            //validate phone for int values
            if (Phone != "") {
                if (!$.isNumeric(Phone)) {
                    bootbox.alert('Please Type numeric value in Phone')
                    $('.loadercont').fadeOut();
                    return;
                }
            }
            //validate cvv for int values
            if (CVV != "") {
                if (!$.isNumeric(CVV)) {
                    bootbox.alert('Please Type numeric value in CVV')
                    $('.loadercont').fadeOut();
                    return;
                }
            }
            //validate email
            if (Email != "") {
                if (!ValidateEmail(Email)) {
                    $('.loadercont').fadeOut();
                    bootbox.alert('Not a valid email');
                    return;
                }
            }

            //if(Year != "" || Month != "")
            //{
            //    var today, someday;
            //    today = new Date();
            //    someday = new Date();
            //    someday.setFullYear(Year, Month, 1);

            //    if (someday < today) {
            //        alert("The expiry date is before today's date. Please select a valid expiry date");
            //        $('.loadercont').fadeOut();
            //        return false;
            //    }
            //}

            // validate cvv for int values

            if (Month != "" || Year != "") {
                if (!$.isNumeric(Month) || !$.isNumeric(Year)) {
                    bootbox.alert('Invalid Expirey Date')
                    $('.loadercont').fadeOut();
                    return;
                }
            }

            if (Month != "" || Year != "") {
                var CardExpireyDate = Month + '/' + Year;
            }

            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "/UserDetail.aspx/MakeClient",
                data: JSON.stringify({
                    id: id, Type: Type, Total: Total, Paid: Paid, Balance: Balance, Cardno: Cardno, CardExpireyDate: CardExpireyDate, CVV: CVV, Phone: Phone, Email: Email, PotentialClient: PotentialClient, comment: comment,
                    FName: FName, LName: LName, CourtName: CourtName, Address1: Address1, Address2: Address2, City: City, State: State, Zip: Zip,
                    Description: Description, DOB: DOB, MI: MI, Violation: Violation, Dateissued: Dateissued, Salutation: Salutation, Summons: Summons,
                    CourtID: CourtID, Muncipality: Muncipality, Complaint: Complaint, Title: Title, ListType: ListType, SourceComm: sourceOfComm, AddedBy: isAddedBy
                }),
                dataType: "Json",
                success: function (response) {
                    bootbox.alert('Client added Successfully');
                    window.location.href = "Clients.aspx"
                    $('.loadercont').fadeOut();
                },
                error: function (response) {
                    debugger;
                    $('.loadercont').fadeOut();
                }
            });
        });



            $('#btnPotentialClient').click(function () {
                debugger;
                id = $('#<%= hdnId.ClientID %>').val()
                $('.loadercont').fadeIn();
                var FName = $('#txtFirstName').text();
                var LName = $('#txtLastName').text();
                var comment = $('#txtComment').val();
                var CourtName = $('#txtCOurtName').text();
                var Phone = $("#txtPhone").val();
                var Email = $("#txtEmail").val();
                var Address1 = $('#txtAddress1').text();
                var Address2 = $('#txtAddress2').text();
                var City = $('#txtCity').text();
                var State = $('#txtState').text();
                var Zip = $('#txtZip').text();
                var Description = $('#txtDescription').text();
                var DOB = $('#TxtDOB').text();
                var MI = $('#txtMI').text();
                var Violation = $('#txtViolation').text();
                var Dateissued = $('#txtDateissued').text();
                var Salutation = $('#txtSalutation').text();
                var Summons = $('#txtSummons').text();
                var CourtID = $('#txtNjCourtId').text();
                var Muncipality = $('#txtMuncipality').text();
                var Complaint = $('#txtComplaint').text();
                var Title = $('#txtTitle').text();
                var ListType = $('#txtListType').text();
                var sourceOfComm = $('#txtSourceOfCoumm').val();
                var isAddedBy = $('#ddlUsers').val();

                var Type = $("#ddlPayment").val();
                var Total = $("#txtPaymentTotal").val();
                var Paid = $("#txtPaymentPaid").val();
                var Balance = $("#txtPaymentBalance").val();
                var Cardno = $("#txtCardNo").val();
                var CVV = $("#txtCVV").val();
                var Phone = $("#txtPhone").val();
                var Email = $("#txtEmail").val();
                var Month = $('#txtExpirayDateMonth').val();
                var Year = $('#txtExpirayDateYear').val();
                var comment = $('#txtComment').val();
                var PotentialClient = true;
                var CardExpireyDate = "";

                if (Phone != "") {
                    if (!$.isNumeric(Phone)) {
                        bootbox.alert('Please Type numeric value in Phone')
                        $('.loadercont').fadeOut();
                        return;
                    }
                }

                if (CVV != "") {
                    if (!$.isNumeric(CVV)) {
                        bootbox.alert('Please Type numeric value in CVV')
                        $('.loadercont').fadeOut();
                        return;
                    }
                }

                if (Email != "") {
                    if (!ValidateEmail(Email)) {
                        $('.loadercont').fadeOut();
                        bootbox.alert('Not a valid email');
                        return;
                    }
                }

                if (Month != "" || Year != "") {
                    if (!$.isNumeric(Month) || !$.isNumeric(Year)) {
                        bootbox.alert('Invalid Expirey Date')
                        $('.loadercont').fadeOut();
                        return;
                    }
                }

                if (Month != "" || Year != "") {
                    var CardExpireyDate = Month + '/' + Year;
                }

                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "/UserDetail.aspx/MakeClient",
                    data: JSON.stringify({
                        id: id, Type: Type, Total: Total, Paid: Paid, Balance: Balance, Cardno: Cardno, CardExpireyDate: CardExpireyDate, CVV: CVV, Phone: Phone, Email: Email, PotentialClient: PotentialClient, comment: comment,
                        FName: FName, LName: LName, CourtName: CourtName, Address1: Address1, Address2: Address2, City: City, State: State, Zip: Zip,
                        Description: Description, DOB: DOB, MI: MI, Violation: Violation, Dateissued: Dateissued, Salutation: Salutation, Summons: Summons,
                        CourtID: CourtID, Muncipality: Muncipality, Complaint: Complaint, Title: Title, ListType: ListType, SourceComm: sourceOfComm, AddedBy: isAddedBy
                    }),
                    dataType: "Json",
                    dataType: "Json",
                    success: function (response) {
                        debugger;
                        bootbox.alert('Potential Client added Successfully');
                        window.location.href = "PotentialClient.aspx"
                        $('.loadercont').fadeOut();
                    },
                    error: function (response) {
                        debugger
                        $('.loadercont').fadeOut();
                    }
                });
            });


            $("#liTopUser a").click(function () {
                BackToUser();
            });

            function BackToUser() {
                $("#liTopUser a").removeAttr("href");
                var Search = $('#<%= hdnSearch.ClientID %>').val();
                var Contains = $('#<%= hdnContains.ClientID %>').val();
                window.location.href = "Users.aspx?Search=" + Search + "&Contains=" + Contains;
            }
            $("#ddlPayment").change(function () {
                var Value = $("#ddlPayment").val();
                if (Value == "Cash") {
                    $("#dvCardDetails").hide();
                    $("#dvCvv").hide();
                    //$("#btnCardAuthorization").hide();
                }
                else {
                    $("#dvCardDetails").show();
                    $("#dvCvv").show();
                    //$("#btnCardAuthorization").show();
                }
            });

            function UserDetailApi() {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "/UserDetail.aspx/UserDetailsAPI",
                    dataType: "Json",
                    success: function (response) {
                        console.log(response.d);
                        $('#txtFirstName').html(response.d.FName);
                        $('#txtLastName').html(response.d.LName);
                        //$('#txtListType').html(response.d.List_Type);
                        //$('#txtCOurtName').html(response.d.Court_Name);
                        //$('#txtFileDate').html(response.d.File_Date);
                        $('#txtCourtDate').html(response.d.CourtDate);
                        $('#txtAddress1').html(response.d.Address1);
                        $('#txtAddress2').html(response.d.Address2);
                        $('#txtCity').html(response.d.City);
                        $('#txtState').html(response.d.State);
                        $('#txtZip').html(response.d.zip);
                        $('#txtDescription').html(response.d.ViolationDescription);
                        //$('#txtMI').html(response.d.MI);
                        $('#txtViolation').html(response.d.ViolationStatute);
                        $('#txtDateissued').html(response.d.ViolationDate);
                        //$('#txtSalutation').html(response.d.Salutation);
                        $('#txtSummons').html(response.d.Summons);
                        //$('#txtNjCourtId').html(response.d.NJ_CourtID);
                        //$('#txtMuncipality').html(response.d.Muncipality);
                        //$('#txtComplaint').html(response.d.Complaint);
                        //$('#txtTitle').html(response.d.Title);
                        $('#TxtDOB').html(response.d.DOB)
                        $("#ddlPayment").change();
                    },
                    error: function (response) {
                        $('.loadercont').fadeOut();
                    }
                });

            }

    </script>


</asp:Content>
