<cfsetting enablecfoutputonly=true>
<!---
	Name         : index.cfm
	Author       : Raymond Camden 
	Created      : January 31, 2005
	Last Updated : August 27, 2005
	History      : Removed mappings, use of prefix (rkc 8/27/05)
	Purpose		 : 
--->
<!--- references to req collection --->
<cfset latest = Context.getValue("latest")>
<cfset todaysbest = Context.getValue("todaysbest")>
<cfset thismonth = Context.getValue("thismonth")>
<cfset thisyear = Context.getValue("thisyear")>
<cfset top30 = Context.getValue("top30")>

<cfoutput>
<p>
<table class="adminListTable" width="500">
<tr class="adminListHeader">
	<td colspan="2"><b>General Stats</b></td>
</tr>
<tr>
	<td><b>Latest Search:</b></td>
	<td>#latest.searchterms[1]# (#dateFormat(latest.dateSearched[1],"m/d/yy")# at #timeFormat(latest.dateSearched[1],"h:mm tt")#)</td>
</tr>
<tr>
	<td><b>Most Popular (Today):</b></td>
	<td>#todaysbest.searchterms# (#todaysbest.score#)</td>
</tr>
<tr>
	<td><b>Most Popular (Past 30 Days):</b></td>
	<td>#thismonth.searchterms# (#thismonth.score#)</td>
</tr>
<tr>
	<td><b>Most Popular (Past 365 Days):</b></td>
	<td>#thisyear.searchterms# (#thisyear.score#)</td>
</tr>
</table>
</p>

<p>
<table class="adminListTable" width="500">
<tr class="adminListHeader">
	<td colspan="2"><b>Top 30 Search Terms</b></td>
</tr>
<cfloop query="top30">
	<tr>
		<td>#searchTerms#</td>
		<td>#score#</td>
	</tr>
</cfloop>
</table>
</p>

</cfoutput>

<cfsetting enablecfoutputonly=false>