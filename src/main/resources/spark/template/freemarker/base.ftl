<#macro title>
  Base Page Title
</#macro>

<#macro content>
  Here goes content
</#macro>


<#macro display_page>

    <html>
    <head>
        <title><@title/></title>
         <link rel="icon" type="image/png" href="/image/favicon.png"/>
        <link rel="stylesheet" type="text/css" href="/css/styles.css" media="screen" />
       <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet" media="screen">
    </head>
     
    <body>
    <div id="header">
    <H2>
            Developer Console - Tu repositorio de Aplicaciones
    </H2>

<ul class="nav nav-tabs">
  <li class="active"><a href="/">Inicio</a></li>
  <li><a href="/new">Crear</a></li>
  <li><a href="/edit">Editar</a></li>
  <li><a href="/drop">drop</a></li>
</ul>


<!---
<a class="btn btn-success" href="/new" role="button">Nueva Aplicacion</a>
<a class="btn btn-info" href="/edit" role="button">Editar Aplicacion</a>
-->
    </div>

    <div id="content">
        <@content/>
    </div>

    <div id ="footer">
        <p>Página realizada por profesor.asix@gmail.con usando Spark & Freemarker</p>
    </div>  

    </body>
    </html>

</#macro>