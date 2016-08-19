<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transit.aspx.cs" Inherits="transit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 216px;
        }
        .style2
        {
            width: 673px;
        }
        .style3
        {
            width: 403px;
        }
        .style4
        {
            width: 1038px;
        }
        .style5
        {
            width: 105px;
        }
        .GridContainer
        {
	        background:#ECF5FB;
	        min-height:100px;
	        border:solid 1px #d4d4d4;
	        max-height:500px;
	    }

        
       .style
       {
            width:200px;
            height:45px;
            font-size:20px;
            background:#3e9ad2;
            -webkit-box-shadow:0 0 4px #000;/*safari and Chrome*/
            -moz-box-shadow:0 0 4px #000; /*Mozilla*/
            -o-box-shadow:0 0 4px #000; /*Opera*/
            -ms-box-shadow:0 0 4px #000; /*Ms IE*/
            box-shadow:0 0 4px #000; /*W3C*/
            -webkit-border-radius:15px;/*safari and Chrome*/
            -moz-border-radius:15px; /*Mozilla*/
            -o-box-border-radius:15px; /*Opera*/
            -ms-box-border-radius:15px; /*Ms IE*/
            border-radius:15px; /*W3C*/
            background-image:-webkit-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:-moz-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:-o-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:-ms-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            font-size="large";
            font-weight="bold";
            font-family=" Times New Roman";
	   }

        .style7
        {
            font-size: large;
            font-weight: bold;
            font-family: "Times New Roman", Times, serif;
            color: #FFFFFF;
        }
        .GridViewStyle
        {
            font-family: Arial, Sans-Serif;
            font-size:small;
            table-layout: auto;
            border-collapse: collapse;
            border: #1d1d1d 5px solid;
        }
        /*Header and Pager styles*/
        .HeaderStyle, .PagerStyle /*Common Styles*/
        {
            background-image: url(Images/HeaderGlassBlack.jpg);
            background-position:center;
            background-repeat:repeat-x;
            background-color:#1d1d1d;
        }
        .HeaderStyle th
        {
            padding: 5px;
            color: #ffffff;
        }
        .HeaderStyle a
        {
            text-decoration:none;
            color:#ffffff;
            display:block;
            text-align:left;
            font-weight:normal;
        }
        .PagerStyle table
        {
            text-align:center;
            margin:auto;
        }
        .PagerStyle table td
        {
            border:0px;
            padding:5px;
        }
        .PagerStyle td
        {
            border-top: #1d1d1d 3px solid;
        }
        .PagerStyle a
        {
            color:#ffffff;
            text-decoration:none;
            padding:2px 10px 2px 10px;
            border-top:solid 1px #777777;
            border-right:solid 1px #333333;
            border-bottom:solid 1px #333333;
            border-left:solid 1px #777777;
        }
        .PagerStyle span
        {
            font-weight:bold;
            color:#FFFFFF;
            text-decoration:none;
            padding:2px 10px 2px 10px;
        }
        /*RowStyles*/
        .RowStyle td, .AltRowStyle td, .SelectedRowStyle td, .EditRowStyle td /*Common Styles*/
        {
            padding: 5px;
            border-right: solid 1px #1d1d1d;
        }
        .RowStyle td
        {
            background-color: #c9c9c9;
        }
        .AltRowStyle td
        {
            background-color: #f0f0f0;
        }
        .SelectedRowStyle td
        {
            background-color: #ffff66;
        }

        .style8
        {
            width: 216px;
            font-weight: bold;
            font-size: large;
            font-family: "Times New Roman", Times, serif;
            color: #FFFFFF;
        }
        .style11
        {
            width: 216px;
            font-weight: bold;
            font-size: large;
            font-family: "Times New Roman", Times, serif;
            color: #FFFFCC;
        }
        .style12
        {
            color: #FFFFFF;
        }

    </style>
    
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script language="javascript" type="text/javascript">
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();
    var unitSystem;
        var styles = [
                 { 
                featureType: "transit.line", 
                elementType: "geometry.fill", 
                stylers: [ { color: "#864a4a" } ] 
                },
                { featureType: "transit.station.rail", elementType: "labels", stylers: [ { hue: "#00ff19" } ] },

                { featureType: "transit.station.bus", elementType: "labels", stylers: [ { hue: "#ff2200" } ] },

                { featureType: "road.arterial", elementType: "geometry", stylers: [ { color: "#a020f0" } ] },

                { featureType: "road.highway", elementType: "geometry", stylers: [ { color: "#00ffff" } ] }
                ];
                
                var styledMap = new google.maps.StyledMapType(styles, {name: "Styled Map"});

    function InitializeMap() {
        directionsDisplay = new google.maps.DirectionsRenderer();
        var latlng = new google.maps.LatLng(19.082063,72.888215);
        var myOptions =
        {
            zoom: 13,
            center: latlng,
             mapTypeControlOptions: {
            mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
        }
        };
        var map = new google.maps.Map(document.getElementById("directionpanel"), myOptions);

         map.mapTypes.set('map_style', styledMap);
          map.setMapTypeId('map_style');
          directionsDisplay.setMap(map);
        
        directionsDisplay.setPanel(document.getElementById('map'));    

        var control = document.getElementById('control');
        control.style.display = 'block';


    }


function calcRouteM() 
{

                    var start = document.getElementById('DropDownList1').value;
                    var end = document.getElementById('DropDownList2').value;
                    var request = {
                        origin: start,
                        destination: end,
                        provideRouteAlternatives: true,
                        unitSystem: google.maps.UnitSystem.METRIC,
                        travelMode: google.maps.DirectionsTravelMode.TRANSIT,
                        transitOptions: {
                        departureTime: new Date(1362799800000)
                        }



                    };
                    directionsService.route(request, function(response, status) {
                        if (status == google.maps.DirectionsStatus.OK) {
                            directionsDisplay.setDirections(response);
                        }
                    });

                }
    function calcRouteA() 
    {
        var start = document.getElementById('DropDownList1').value;
        var end = document.getElementById('DropDownList2').value;
        var request = {
            origin: start,
            destination: end,
            provideRouteAlternatives: true,
            unitSystem: google.maps.UnitSystem.METRIC,
            travelMode: google.maps.DirectionsTravelMode.TRANSIT,
            transitOptions: {
            departureTime: new Date(1363674600000)
            }

            

        };
        directionsService.route(request, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            }
                    });

                }
                
   function calcRouteE() {

        var start = document.getElementById('DropDownList1').value;
        var end = document.getElementById('DropDownList2').value;
        var request = {
            origin: start,
            destination: end,
            provideRouteAlternatives: true,
            unitSystem: google.maps.UnitSystem.METRIC,
            travelMode: google.maps.DirectionsTravelMode.TRANSIT,
            transitOptions: {
            departureTime: new Date(1362825000000)
            }

            

        };
        directionsService.route(request, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            }
                    });

                }
                
               
                

    function Button2_onclick() {
        check();
    }
    
    function check() {
        var i; var name;
        
        if (document.getElementById("DropDownList1").value == document.getElementById("DropDownList2").value)
        {
        alert("PLEASE CHECK THE SOURCE AND DESTINATION ENTERED!!!");
        }
        else  if (document.getElementById("g1").checked == true) 
             {
                 name = document.getElementById("g1").value;
             }
             else if(document.getElementById("g2").checked == true)
              {
                name = document.getElementById("g2").value;
              }
               
             else if (document.getElementById("g3").checked == true)
                        {
                        name = document.getElementById("g3").value;
                        }
                        else 
                        {
                        alert("PLEASE SELECT AN APPROPRIATE TIME");
                        }
                
                         
            switch (name) 
            {
                case "Afternoon": calcRouteA();
                    break;
                case "Morning": calcRouteM();
                    break;
                case "Evening": calcRouteE();
                    break;
            }
        
    }
    
    window.onload = InitializeMap;
    

</script>
</head>
<body oncontextmenu="return false" style="background-image: url('images/page.jpeg')">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" style="width: 51%; height: 384px;">
            <tr>
                <td class="style11">
                    SOURCE:</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="source" 
                        DataValueField="source" Font-Bold="True" Font-Names="Times New Roman" 
                        Font-Size="Large" Height="30px" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                        SelectCommand="SELECT distinct  [source] FROM [source]"></asp:SqlDataSource>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    DESTINATION:</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="dest" DataValueField="dest" 
                        Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="30px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                        SelectCommand="select distinct dest from source" >
                        </asp:SqlDataSource>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    TIME:</td>
                <td class="style2">
                    <input name="r1" id="g1" type="radio" 
                        value="Morning" runat="server" class="style12"/><span class="style7">Morning</span>
                    <br class="style12" />
                    <br class="style12" />
                    <input name="r1" id="g2" type="radio" value="Afternoon" runat="server" 
                        class="style12" /><span 
                        class="style7">Afternoon</span>
                    <br class="style12" />
                    <br class="style12" />
                    <input name="r1" id="g3" type="radio" value="Evening" runat="server" 
                        class="style12"/><span 
                        class="style7">Evening</span>
                    </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="Button4" runat="server" Text="GET DIRECTION" Width="169px" 
                        OnClientClick="if (!Button2_onclick()) return false;" 
                        onclick="Button4_Click1"/>
                </td>
                <td class="style2">
                    &nbsp;<asp:Button ID="Button3" runat="server" Height="40px" onclick="Button3_Click" 
                        Text="MARK THIS OPTION" Width="198px" />
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
        </table>
    
        <br />
        <br />
    
    </div>
    <table style="width:100%; height: 594px;">
        <tr>
            <td class="style3">
                <div id ="directionpanel" 
                    
                    
                    style="height: 723px; width: 1112px; font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: large; margin-bottom: 0px;" >
                    </div></td>
            <td class="style4">
               <div id ="map" 
                    
                    
                    style="height: 737px; width: 600px; overflow: auto; font-size: large; font-weight: bold; font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF;"></div>
</td>
        </tr>
        </table>
                
                <br />
    <br />
                
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                
                
                
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="Button1" runat="server" BackColor="#999966" Text="COST ESTIMATION" 
                        Width="205px" onclick="Button1_Click" CssClass="style" Height="38px"/>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div align="center">
                        <asp:GridView ID="GridView1" runat="server" BackColor="#3399FF" CellPadding="4" 
                            CssClass="GridViewStyle" Font-Bold="True" Font-Size="Large" ForeColor="#333333" 
                            GridLines="None" Height="285px" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" ShowFooter="true" 
                            Width="70%">
                            <RowStyle BackColor="#F7F6F3" CssClass="RowStyle" ForeColor="#333333" />
                            <Columns>
                                <asp:CommandField ItemStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center" 
                                    SelectText="Print Ticket" ShowSelectButton="True">
                                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                                </asp:CommandField>
                            </Columns>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                                HorizontalAlign="Right" />
                            <PagerStyle BackColor="#284775" CssClass="PagerStyle" Font-Bold="True" 
                                ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#E2DED6" CssClass="SelectedRowStyle" 
                                Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#5D7B9D" CssClass="HeaderStyle" Font-Bold="True" 
                                ForeColor="White" HorizontalAlign="Left" />
                            <EditRowStyle BackColor="#999999" CssClass="EditRowStyle" />
                            <AlternatingRowStyle BackColor="White" CssClass="AltRowStyle" 
                                ForeColor="#284775" />
                        </asp:GridView>
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
                
                
    </form>
    <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    </body>
</html>
