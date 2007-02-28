<cfsetting enablecfoutputonly=true>
<cfprocessingdirective pageencoding="utf-8">
<!---
	Name         : C:\projects\blogcfc5\client\admin\categories.cfm
	Author       : Raymond Camden
	Created      : 04/07/06
	Last Updated :
	History      :
--->
<cfset categories = Context.getValue("categories")>

	<cfoutput>
	<p>
	Your blog currently has
		<cfif categories.recordCount>
		#categories.recordcount# categories
		<cfelseif categories.recordCount is 1>
		1 category
		<cfelse>
		0 categories
		</cfif>.
	</p>
	</cfoutput>

	<cfmodule template="../tags/datatable.cfm" data="#categories#" editlink="?event=#Context.getValue("xehCategory")#" label="Categories"
			  linkcol="categoryname" linkval="categoryid" deleteEvent="#Context.getValue("xehDeleteCategory")#">
		<cfmodule template="../tags/datacol.cfm" colname="categoryname" label="Category" />
		<cfmodule template="../tags/datacol.cfm" colname="entrycount" label="Entries" />
	</cfmodule>



<cfsetting enablecfoutputonly=false>