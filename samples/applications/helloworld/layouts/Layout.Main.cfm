<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" /><title>ColdBox Hello World</title><style type="text/css"><!--.Titles {	font:Arial, Helvetica, sans-serif;	font-size: 12px;	font-weight: bold;	color: #FFFFFF;	background-color: #006699;	padding: 5px 5px 5px 5px;	height: 30px;	text-align:center;}body{	font:Arial, Helvetica, sans-serif;	font-size: 12px;	margin-left: 0px;	margin-top: 0px;	margin-right: 0px;	margin-bottom: 0px;}a {	font:Arial, Helvetica, sans-serif;	font-size: 12px;	color: #0066CC;}a:hover {	color: #FF6600;}.style1 {	font-size: 18px;	color: #FFFFFF;	font-family: Geneva, Arial, Helvetica, sans-serif;}--></style><script type="text/JavaScript"><!--<cfoutput>function startover(){	document.getElementById("form1").event.value = "#Context.getValue("xehStartOver")#";	alert(document.getElementById("form1").event.value);}function MM_openBrWindow(theURL,winName,features) { //v2.0  window.open(theURL,winName,features);}</cfoutput>//--></script></head><body><table width="100%" border="0" cellspacing="0" cellpadding="10">  <tr style="border-bottom:1px solid #eaeaea">    <td bgcolor="#0066CC"><span class="style1">ColdBox Hello World </span></td>  </tr></table><br /><table width="569" border="0" align="center" cellpadding="0" style="border:1px dotted #006699;">  <tr>    <td width="91" rowspan="2" align="center" bgcolor="#eeeeee"><p><a href="index.cfm">Home</a><br />            <br />            <a href="#" onclick="MM_openBrWindow('index.cfm?event=ehGeneral.dspPopup','popup','status=yes,scrollbars=yes,width=400,height=200')">Sample Popup<br />        </a></p></td>    <td width="470" height="50" align="center"><cfoutput>      <!--- Render the View Here --->      #renderView()# </cfoutput> </td>  </tr>  <tr>    <td align="center"><form id="form1" name="form1" method="post" action="index.cfm">      <p>Say Hello :        <input name="firstname" type="text" id="firstname" size="20" /><label>          <input type="submit" name="Submit" value="Change Name" />          </label>        <cfoutput>        <input name="event" type="hidden" id="event" value="#Context.getValue("xehHello")#" />        </cfoutput>        <input type="submit" name="Submit2" value="Start Over" onclick="startover()"/>      </p>      </form></td>  </tr></table><p>&nbsp;</p>	<p align="center"><a href="http://www.luismajano.com/projects/coldbox"><img src="../../images/poweredby.png" border="0"></a></p></body></html>