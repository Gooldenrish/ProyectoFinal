
    <html>
	<link rel="stylesheet" type="text/css" href="/home/carlos/NetBeansProjects/ProyectoFinal/ProyectoFinal/src/main/resources/public/css/styles.css">
    <head><title>ViralPatel.net - FreeMarker Hello World</title>
   
     
    <body>
    <div id="header">
    <H2>
            FreeMarker Users Form
    </H2>
    </div>
    <div id="content">
     
     
      <fieldset>
            <legend>Add User</legend>
      <form name="user" action="hello" method="post">
            Firstname: <input type="text" name="firstname" />       <br/>
            Lastname: <input type="text" name="lastname" /> <br/>
            <input type="submit" value="   Save   " />
      </form>
      </fieldset>
      <br/>
      <table class="datatable">
            <tr>
                    <th>Firstname</th>  <th>Lastname</th>
            </tr>
<#--
        <#list users as user>
            <tr>
                    <td>${user.firstname}</td> <td>${user.lastname}</td>
            </tr>
        </#list>
-->

      </table>
     
    </div>  
    </body>
    </html>
