<#include "base.ftl">

<#macro content>
 


  <br/>
  <table class="datatable">
        <tr>
                <th>Firstname</th>  <th>Lastname</th>
        </tr>
        <#list users as user>
        <tr>
                <td>${user.firstname}</td> <td>${user.lastname}</td>
        </tr>
        </#list>
  </table>

</#macro>
   
<@display_page/>    