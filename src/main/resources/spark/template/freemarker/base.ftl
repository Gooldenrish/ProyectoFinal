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
  <li class="active"><a href="/index">Inicio</a></li>
  <li><a href="/add">Crear</a></li>
</ul>

    </div>

    <div id="content">
        <@content/>
    </div>

    <div id ="footer">
        <p>Página realizada por Carlos usando Spark & Freemarker</p>
    </div>  

    </body>
    </html>

</#macro>