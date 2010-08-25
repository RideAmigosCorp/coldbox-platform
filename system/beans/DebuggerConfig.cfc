<!-----------------------------------------------------------------------
********************************************************************************
Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
Author 	 :	Luis Majano
Date     :	June 30, 2006
Description :
	This configures the coldbox debugger

Modification History:

----------------------------------------------------------------------->
<cfcomponent name="DebuggerConfig"
			 hint="I hold a coldbox debugger configuration data."
			 output="false">

<!------------------------------------------- CONSTRUCTOR ------------------------------------------->
	<cfscript>
		variables.instance = structnew();
	</cfscript>

	<cffunction name="init" access="public" output="false" hint="constructor" returntype="DebuggerConfig">
	    <cfscript>
		    // Set the default template
		    setDebugTemplate('neo');
		    return this;
		</cfscript>
	</cffunction>

<!------------------------------------------- PUBLIC ------------------------------------------->

	<!--- Get memento --->
	<cffunction name="getMemento" access="public" output="false" returntype="struct" hint="Get memento">
		<cfreturn instance/>
	</cffunction>
	<cffunction name="setMemento" access="public" output="false" returntype="void" hint="Set memento">
		<cfargument name="memento" type="struct" required="true"/>
		<cfset instance = arguments.memento/>
	</cffunction>

	<!--- enableDumpVar --->
	<cffunction name="getEnableDumpVar" access="public" output="false" returntype="boolean" hint="Get enableDumpVar">
		<cfreturn instance.enableDumpVar/>
	</cffunction>
	<cffunction name="setEnableDumpVar" access="public" output="false" returntype="void" hint="Set enableDumpVar">
		<cfargument name="enableDumpVar" type="boolean" required="true"/>
		<cfset instance.enableDumpVar = arguments.enableDumpVar/>
	</cffunction>

	<!--- Request Profiler --->
	<cffunction name="getPersistentRequestProfiler" access="public" output="false" returntype="boolean" hint="Get PersistentRequestProfiler">
		<cfreturn instance.PersistentRequestProfiler/>
	</cffunction>
	<cffunction name="setPersistentRequestProfiler" access="public" output="false" returntype="void" hint="Set PersistentRequestProfiler">
		<cfargument name="PersistentRequestProfiler" type="boolean" required="true"/>
		<cfset instance.PersistentRequestProfiler = arguments.PersistentRequestProfiler/>
	</cffunction>

	<!--- Max Request Profilers --->
	<cffunction name="getMaxPersistentRequestProfilers" access="public" output="false" returntype="numeric" hint="Get maxPersistentRequestProfilers">
		<cfreturn instance.maxPersistentRequestProfilers/>
	</cffunction>
	<cffunction name="setMaxPersistentRequestProfilers" access="public" output="false" returntype="void" hint="Set maxPersistentRequestProfilers">
		<cfargument name="maxPersistentRequestProfilers" type="numeric" required="true"/>
		<cfset instance.maxPersistentRequestProfilers = arguments.maxPersistentRequestProfilers/>
	</cffunction>

	<!--- Max RCPanel query rows --->
	<cffunction name="getMaxRCPanelQueryRows" access="public" output="false" returntype="numeric" hint="Get maxRCPanelQueryRows">
		<cfreturn instance.maxRCPanelQueryRows/>
	</cffunction>
	<cffunction name="setMaxRCPanelQueryRows" access="public" output="false" returntype="void" hint="Set maxRCPanelQueryRows">
		<cfargument name="maxRCPanelQueryRows" type="numeric" required="true"/>
		<cfset instance.maxRCPanelQueryRows = arguments.maxRCPanelQueryRows/>
	</cffunction>

	<!--- show Tracer Panel --->
	<cffunction name="getShowTracerPanel" access="public" output="false" returntype="boolean" hint="Get showTracerPanel">
		<cfreturn instance.showTracerPanel/>
	</cffunction>
	<cffunction name="setShowTracerPanel" access="public" output="false" returntype="void" hint="Set showTracerPanel">
		<cfargument name="showTracerPanel" type="boolean" required="true"/>
		<cfset instance.showTracerPanel = arguments.showTracerPanel/>
	</cffunction>

	<!--- expanded Tracer Panel --->
	<cffunction name="getExpandedTracerPanel" access="public" output="false" returntype="boolean" hint="Get expandedTracerPanel">
		<cfreturn instance.expandedTracerPanel/>
	</cffunction>
	<cffunction name="setExpandedTracerPanel" access="public" output="false" returntype="void" hint="Set expandedTracerPanel">
		<cfargument name="expandedTracerPanel" type="boolean" required="true"/>
		<cfset instance.expandedTracerPanel = arguments.expandedTracerPanel/>
	</cffunction>

	<!--- Show DebugInfo panel --->
	<cffunction name="getShowInfoPanel" access="public" output="false" returntype="boolean" hint="Get showInfoPanel">
		<cfreturn instance.showInfoPanel/>
	</cffunction>
	<cffunction name="setShowInfoPanel" access="public" output="false" returntype="void" hint="Set showInfoPanel">
		<cfargument name="showInfoPanel" type="boolean" required="true"/>
		<cfset instance.showInfoPanel = arguments.showInfoPanel/>
	</cffunction>

	<!--- Expanded info panel --->
	<cffunction name="getExpandedInfoPanel" access="public" output="false" returntype="boolean" hint="Get expandedInfoPanel">
		<cfreturn instance.expandedInfoPanel/>
	</cffunction>
	<cffunction name="setExpandedInfoPanel" access="public" output="false" returntype="void" hint="Set expandedInfoPanel">
		<cfargument name="expandedInfoPanel" type="boolean" required="true"/>
		<cfset instance.expandedInfoPanel = arguments.expandedInfoPanel/>
	</cffunction>

	<!--- show CachePanel --->
	<cffunction name="getShowCachePanel" access="public" output="false" returntype="boolean" hint="Get showCachePanel">
		<cfreturn instance.showCachePanel/>
	</cffunction>
	<cffunction name="setShowCachePanel" access="public" output="false" returntype="void" hint="Set showCachePanel">
		<cfargument name="showCachePanel" type="boolean" required="true"/>
		<cfset instance.showCachePanel = arguments.showCachePanel/>
	</cffunction>

	<!--- Expanded --->
	<cffunction name="getExpandedCachePanel" access="public" output="false" returntype="boolean" hint="Get expandedCachePanel">
		<cfreturn instance.expandedCachePanel/>
	</cffunction>
	<cffunction name="setExpandedCachePanel" access="public" output="false" returntype="void" hint="Set expandedCachePanel">
		<cfargument name="expandedCachePanel" type="boolean" required="true"/>
		<cfset instance.expandedCachePanel = arguments.expandedCachePanel/>
	</cffunction>

	<!--- show --->
	<cffunction name="getShowRCPanel" access="public" output="false" returntype="boolean" hint="Get showRCPanel">
		<cfreturn instance.showRCPanel/>
	</cffunction>
	<cffunction name="setShowRCPanel" access="public" output="false" returntype="void" hint="Set showRCPanel">
		<cfargument name="showRCPanel" type="boolean" required="true"/>
		<cfset instance.showRCPanel = arguments.showRCPanel/>
	</cffunction>

	<!--- expanded --->
	<cffunction name="getExpandedRCPanel" access="public" output="false" returntype="boolean" hint="Get expandedRCPanel">
		<cfreturn instance.expandedRCPanel/>
	</cffunction>
	<cffunction name="setExpandedRCPanel" access="public" output="false" returntype="void" hint="Set expandedRCPanel">
		<cfargument name="expandedRCPanel" type="boolean" required="true"/>
		<cfset instance.expandedRCPanel = arguments.expandedRCPanel/>
	</cffunction>

	<!--- Expanded modules Panel --->
	<cffunction name="getExpandedModulesPanel" access="public" returntype="boolean" output="false">
		<cfreturn instance.expandedModulesPanel>
	</cffunction>
	<cffunction name="setExpandedModulesPanel" access="public" returntype="void" output="false">
		<cfargument name="expandedModulesPanel" type="boolean" required="true">
		<cfset instance.expandedModulesPanel = arguments.expandedModulesPanel>
	</cffunction>

	<!--- Show Modules Panel --->
	<cffunction name="getshowModulesPanel" access="public" returntype="boolean" output="false">
		<cfreturn instance.showModulesPanel>
	</cffunction>
	<cffunction name="setshowModulesPanel" access="public" returntype="void" output="false">
		<cfargument name="showModulesPanel" type="boolean" required="true">
		<cfset instance.showModulesPanel = arguments.showModulesPanel>
	</cffunction>

	<!--- View Selection --->
	<cffunction name="getDebugTemplate" access="public" returntype="string" output="false">
		<cfreturn instance.debugTemplate>
	</cffunction>
	<cffunction name="setDebugTemplate" access="public" returntype="void" output="false">
		<cfargument name="debugTemplate" type="string" required="true">
		<cfset instance.debugTemplate = lcase(trim(arguments.debugTemplate))>
	</cffunction>

	<!--- Populate from struct --->
	<cffunction name="populate" access="public" returntype="any" hint="Populate with a memento" output="false">
		<!--- ************************************************************* --->
		<cfargument name="memento"  required="true" type="struct" 	hint="The structure to populate the object with.">
		<!--- ************************************************************* --->
		<cfscript>
			var key = "";
			var udfCall = "";

			// Populate Bean
			for(key in arguments.memento){
				/* Check if setter exists */
				if( structKeyExists(this,"set" & key) ){
					udfCall = this["set#key#"];
					udfCall(arguments.memento[key]);
				}
			}

			return this;
		</cfscript>
	</cffunction>

</cfcomponent>