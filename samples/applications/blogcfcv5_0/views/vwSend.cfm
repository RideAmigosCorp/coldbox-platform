<cfsetting enablecfoutputonly=true>
<cfprocessingdirective pageencoding="utf-8">
<!---
	Name         : Send
	Author       : Raymond Camden 
	Created      : April 15, 2006
	Last Updated : 
	History      : 
	Purpose		 : Sends a blog entry
--->

<cfset entry = Context.getValue("entry")>

<cfoutput>
<div class="date"><b>#getResource("sendentry")#: #entry.title#</b></div>

<div class="body">

<cfif Context.getValue("showForm")>
<p>
#getResource("sendform")#
</p>

	<form action="#cgi.script_name#?id=#Context.getValue("id")#" method="post">
   <div id="sendForm">
	<input type="hidden" name="event" value="#Context.getValue("xehSendEntry")#">
    <fieldset class="sideBySide">
      <label for="email" style="width:150px;">#getResource("youremailaddress")#:</label>
      <input type="text" id="email" name="email" value="#Context.getValue("email","")#" style="width:300px;">
    </fieldset>
    <fieldset class="sideBySide">
      <label for="remail" style="width:150px;">#getResource("receiveremailaddress")#:</label>
      <input type="text" id="remail" name="remail" value="#Context.getValue("remail","")#" style="width:300px;">
    </fieldset>
    <fieldset class="sideBySide">
      <label for="remail" style="width:150px;">#getResource("optionalnotes")#:</label>
      <textarea name="notes" style="width:300px;" rows="5">#Context.getValue("notes","")#</textarea>
    </fieldset>
    <fieldset class="formButtons">
	  <input type="submit" id="submit" name="send" value="#getResource("sendentry")#">
    </fieldset>
   </div>
	</form>

<!---
using plugin
<cfelse>

	<p>
	#getResource("entrysent")#
	</p> --->
	
</cfif>

</div>
</cfoutput>

<cfsetting enablecfoutputonly=false>