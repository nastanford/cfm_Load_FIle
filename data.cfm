<cfoutput>
  Time: #TimeFormat(now(),'hh:mm:ss')#<br>
  Date: #DateFormat(now(),'mm/dd/yyyy')#<br>
</cfoutput>

<cfquery name="data" datasource="#this.datasource#">
  SELECT * 
  FROM authors
  order by lastname, firstname
</cfquery>

<table class="tbl">
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
  </tr>
  <cfoutput query="data">
  <tr>
    <td>#firstname#</td>
    <td>#lastname#</td>
  </cfoutput>
