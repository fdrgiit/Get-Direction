<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style2
        {
            width: 1147px;
            height: 109px;
        }
        #control
        {
            height: 249px;
        }
        .style4
        {
            width: 426px;
        }
        .style5
        {
            width: 276px;
            height: 83px;
        }
        .style6
        {
            width: 426px;
            height: 83px;
        }
        .style7
        {
            height: 83px;
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
        .style11
        {
            width: 276px;
            font-weight: bold;
            font-size: large;
            font-family: "Times New Roman", Times, serif;
            color: #003366;
        }
        
        
        .style12
        {
            font-size: large;
            font-weight: bold;
            color: #003366;
        }
        .style13
        {
            width: 276px;
            font-weight: bold;
            font-size: large;
            font-family: "Times New Roman", Times, serif;
            color: #003366;
        }
        
        
    </style>
</head>

<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script language="javascript" type="text/javascript">

    var A,B,C,D,E;
    var a = 74.14;
    var b = 54.87;
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
        var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

          map.mapTypes.set('map_style', styledMap);
          map.setMapTypeId('map_style');
          directionsDisplay.setMap(map);
        
        directionsDisplay.setPanel(document.getElementById('directions_panel'));
   
     //   string xxxx = directionsDisplay.toString();
    //    prompt(xxxx);
        

        var control = document.getElementById('control');
        control.style.display = 'block';


    }

    function calcRoute() {

        var start = document.getElementById('DropDownList1').value;
        var end = document.getElementById('DropDownList2').value;
        var request = {
            origin: start,
            destination: end,
            provideRouteAlternatives: true,
            unitSystem: google.maps.UnitSystem.METRIC,
            travelMode: google.maps.DirectionsTravelMode.DRIVING,
            avoidHighways: document.getElementById('highways').checked,
            avoidTolls: document.getElementById('tolls').checked   
                      

        };
        directionsService.route(request, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            }
                    });
                    
}

    function Button1_onclick() {
        calcRoute();
    }
    
    function fuel()
    {
    
    var DropDownList3;
    switch (document.getElementById("DropDownList3").value) {
     case "Petrol":
        DropDownList3 = Number(a);
        break;
      case "Diesel":
        DropDownList3 = Number(b);
        break;
    }
    
    A = eval(DropDownList3);
    B = eval(document.form1.TextBox2.value);
    C = eval(document.form1.TextBox3.value);
    D = (B / C);
    E = (D * A);
    document.form1.TextBox4.value = D;
    document.form1.TextBox5.value = E;
    }
    
    function clear()
    {
    document.getElementById("DropDownList3").value = "Select";
    document.form1.TextBox2.value = "";
    document.form1.TextBox3.value = "";
    document.form1.TextBox4.value = "";
    document.form1.TextBox5.value = "";
    }
    

    window.onload = InitializeMap;
    </script>

<body oncontextmenu="return false" style="background-image: url('images/grid_DominikKiss_SubtlePatterns.jpg')">
    <form id="form1" runat="server">
    
    <table id ="control">
<tr>
<td class="style2">
                &nbsp;<br />
                <table style="width:100%;">
                    <tr>
                        <td class="style11">
                            SOURCE:</td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataTextField="Source" DataValueField="Source" Font-Bold="True" 
                                Font-Names="Times New Roman" Font-Size="Large" Height="25px" Width="741px">
                                <asp:ListItem>Don Bosco,Vidyavihar</asp:ListItem>
                                <asp:ListItem>Airport,Mumbai</asp:ListItem>
                                <asp:ListItem>The Oberio, Mumbai, Nariman Point</asp:ListItem>
                                <asp:ListItem>Chowpatty Beach</asp:ListItem>
                                <asp:ListItem>Kemps Corner</asp:ListItem>
                                <asp:ListItem>Navy Nagar</asp:ListItem>
                                <asp:ListItem>Sanjay Gandhi National Park, Mumbai</asp:ListItem>
                                <asp:ListItem>Dhobhitalao Mumbai</asp:ListItem>
                                <asp:ListItem>Mahalaxmi Racecourse</asp:ListItem>
                                <asp:ListItem>Hanging Garden Mumbai</asp:ListItem>
                                <asp:ListItem>Prabhadevi</asp:ListItem>
                                <asp:ListItem>VJTI Mumbai</asp:ListItem>
                                <asp:ListItem>Kj Somaiya</asp:ListItem>
                                <asp:ListItem>Jehangir Art Gallery</asp:ListItem>
                                <asp:ListItem>MCA Complex Bandra</asp:ListItem>
                                <asp:ListItem>Wankhede Stadium</asp:ListItem>
                                <asp:ListItem>Haji Ali</asp:ListItem>
                                <asp:ListItem>Bandra Fort</asp:ListItem>
                                <asp:ListItem>Jijamata Udyan</asp:ListItem>
                                <asp:ListItem>Five Gardens</asp:ListItem>
                                <asp:ListItem>Siddhi Vinayak Temple Mumbai</asp:ListItem>
                                <asp:ListItem>Shivaji Park, Dadar</asp:ListItem>
                                <asp:ListItem>Nehru Planetorium Mumbai</asp:ListItem>
                                <asp:ListItem>Ghatkopar Station</asp:ListItem>
                                <asp:ListItem>IIT Mumbai</asp:ListItem>
                                <asp:ListItem>Lamington Road Mumbai</asp:ListItem>
                                <asp:ListItem>L&amp;T Powai</asp:ListItem>
                                <asp:ListItem>Hiranandani Gardens Powai</asp:ListItem>
                                <asp:ListItem>Mumbai university</asp:ListItem>
                                <asp:ListItem>Film city mumbai</asp:ListItem>
                                <asp:ListItem>Mahakali Caves</asp:ListItem>
                                <asp:ListItem>Taj Mumbai</asp:ListItem>
                                <asp:ListItem>Gateway of India</asp:ListItem>
                                <asp:ListItem>Prince of wales museum</asp:ListItem>
                                <asp:ListItem>Taraporewala Aquarium, Girgaon, Mumbai, Maharashtra, India</asp:ListItem>
                                <asp:ListItem>Nariman Point</asp:ListItem>
                                <asp:ListItem>Powai Lake</asp:ListItem>
                                <asp:ListItem>Reserve Bank of India, Kala Ghoda, Fort, Mumbai, Maharashtra, 
                                India</asp:ListItem>
                                <asp:ListItem>Joey&#39;s Pizza New D. N. Nagar Mumbai</asp:ListItem>
                                <asp:ListItem>Shri Swaminarayan Temple Mumbai</asp:ListItem>
                                <asp:ListItem>Bandra Worli Sea-Link Reclamation</asp:ListItem>
                                <asp:ListItem>Mumba Devi Temple</asp:ListItem>
                                <asp:ListItem>Bombay Stock Exchange</asp:ListItem>
                                <asp:ListItem>Crawford Market</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <input type="checkbox" id="highways" /><span class="style12">Avoid highways</span></td>
                        <td class="style6">
                            <input type="checkbox" id="tolls" /><span class="style12">Avoid tolls</span></td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13">
                            DESTINATION:</td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataTextField="Destination" 
                                DataValueField="Destination" Font-Bold="True" Font-Names="Times New Roman" 
                                Font-Size="Large" Height="26px" Width="739px">
                               <asp:ListItem>Crawford Market</asp:ListItem>
                                <asp:ListItem>Bombay Stock Exchange</asp:ListItem>
                               <asp:ListItem>Mumba Devi Temple</asp:ListItem>
                               <asp:ListItem>Bandra Worli Sea-Link Reclamation</asp:ListItem>
                               <asp:ListItem>Shri Swaminarayan Temple Mumbai</asp:ListItem>
                               <asp:ListItem>Joey&#39;s Pizza New D. N. Nagar Mumbai</asp:ListItem>
                               <asp:ListItem>Reserve Bank of India, Kala Ghoda, Fort, Mumbai, Maharashtra,India</asp:ListItem>
                               <asp:ListItem>Powai Lake</asp:ListItem>
                              <asp:ListItem>Nariman Point</asp:ListItem>
                              <asp:ListItem>Taraporewala Aquarium, Girgaon, Mumbai, Maharashtra, India</asp:ListItem>
                             <asp:ListItem>Prince of wales museum</asp:ListItem>
                              <asp:ListItem>Gateway of India</asp:ListItem>
                             <asp:ListItem>Taj Mumbai</asp:ListItem>
                             <asp:ListItem>Mahakali Caves</asp:ListItem>
                             <asp:ListItem>Film city mumbai</asp:ListItem>
                             <asp:ListItem>Mumbai university</asp:ListItem>
                             <asp:ListItem>Hiranandani Gardens Powai</asp:ListItem>
                              <asp:ListItem>L&amp;T Powai</asp:ListItem>
                             <asp:ListItem>Lamington Road Mumbai</asp:ListItem>
                              <asp:ListItem>IIT Mumbai</asp:ListItem>
                              <asp:ListItem>Ghatkopar Station</asp:ListItem>
                              <asp:ListItem>Nehru Planetorium Mumbai</asp:ListItem>
                              <asp:ListItem>Shivaji Park, Dadar</asp:ListItem>
                              <asp:ListItem>Siddhi Vinayak Temple Mumbai</asp:ListItem>
                              <asp:ListItem>Five Gardens</asp:ListItem>
                              <asp:ListItem>Jijamata Udyan</asp:ListItem>
                              <asp:ListItem>Haji Ali</asp:ListItem>
                              <asp:ListItem>Wankhede Stadium</asp:ListItem>
                              <asp:ListItem>MCA Complex Bandra</asp:ListItem>
                              <asp:ListItem>Jehangir Art Gallery</asp:ListItem>
                              <asp:ListItem>Kj Somaiya</asp:ListItem>
                              <asp:ListItem>Bandra Fort</asp:ListItem>   
                              <asp:ListItem>VJTI Mumbai</asp:ListItem>
                              <asp:ListItem>Prabhadevi</asp:ListItem>
                              <asp:ListItem>Hanging Garden Mumbai</asp:ListItem>
                              <asp:ListItem>Mahalaxmi Racecourse</asp:ListItem>
                              <asp:ListItem>Dhobhitalao Mumbai</asp:ListItem>
                              <asp:ListItem>Sanjay Gandhi National Park, Mumbai</asp:ListItem>
                              <asp:ListItem>Navy Nagar</asp:ListItem>
                              <asp:ListItem>Kemps Corner</asp:ListItem>
                              <asp:ListItem>Chowpatty Beach</asp:ListItem>
                              <asp:ListItem>The Oberio, Mumbai, Nariman Point</asp:ListItem>
                              <asp:ListItem>Airport,Mumbai</asp:ListItem>
                              <asp:ListItem>Don Bosco,Vidyavihar</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    onclientclick="calcRoute(); return false;" Text="GET DIRECTION" Height="34px" 
                    Width="222px" BackColor="#3399FF" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" CssClass="style"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="RESET" onclick="Button3_Click" 
                    style="width: 81px" BackColor="#0099FF" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="35px" 
                    Width="125px" CssClass="style"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </td>
</tr>
</table>
<div id="map_canvas" style="float:left;width:64%; height:609px"></div>
<div style="float:none; width:35%; height:610px; overflow:auto; background-color: #FFFFFF;">
  <div id="directions_panel" style="width:140%; height: 852px;"></div>
</div>
 
    
 <div style="width: 415px">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
               
            <cc1:TextBoxWatermarkExtender ID="TBWE2" runat="server" TargetControlID="TextBox2" WatermarkText="Kilometers"></cc1:TextBoxWatermarkExtender>
            <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="TextBox3" WatermarkText="Kilometers/Litre"></cc1:TextBoxWatermarkExtender>
            <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="TextBox4" WatermarkText="Litre"></cc1:TextBoxWatermarkExtender>
            <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" TargetControlID="TextBox5" WatermarkText="Rupees"></cc1:TextBoxWatermarkExtender>
            
        <cc1:ModalPopupExtender ID="ModalPopupExtender1" BackgroundCssClass="ModalPopupBG"
            runat="server" CancelControlID="Button4" TargetControlID="Button5"
            PopupControlID="Panel1" Drag="true" PopupDragHandleControlID="PopupHeader" OnCancelScript="clear()">
        </cc1:ModalPopupExtender>
        <asp:Panel ID="Panel1" runat="server" Height="449px" Width="687px">
            <div class="popup_Container">
                <div class="popup_Titlebar" id="PopupHeader">
                    <div class="TitlebarLeft">
                        <center>FUEL ESTIMATION</center> </div> 
                    <div class="TitlebarRight">
                    </div>
                </div>
                <div class="popup_Body">
                    <br />
                    &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Vehicle Type:" 
                        Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="False" 
                        Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="28px" 
                        Width="106px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Petrol</asp:ListItem>
                        <asp:ListItem>Diesel</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" 
                        Text="Distance needed to travel: " Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Height="26px" Width="180px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Average:" 
                        Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Height="26px" Width="180px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Fuel Required:" 
                        Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Font-Bold="True" 
                        Font-Names="Times New Roman" Height="26px" Width="180px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Cost Incurred:" 
                        Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Font-Bold="True" 
                        Font-Names="Times New Roman" Height="26px" Width="180px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class="popup_Buttons">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#3399FF" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" 
                        OnClientClick="fuel(); return false;" Text="SUBMIT" Width="150px" CssClass="style"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="CANCEL" onclick="Button4_Click" 
                        BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" 
                        Font-Size="Large" ForeColor="White" Width="148px" CssClass="style"/>
                </div>
                <br />
                <br />
                <br />
                <br />
            </div>
        </asp:Panel>
            
      
        
        <br />
        <asp:Button ID="Button5" runat="server" BackColor="#3399FF" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" 
            Text="ESTIMATED FUEL COST" Height="52px" Width="424px" CssClass="style"/>
            
              
   </div>
    </form>
</body>
</html>
