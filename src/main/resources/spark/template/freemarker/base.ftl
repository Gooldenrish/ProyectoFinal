<#macro title>
  Developer Console
</#macro>

<#macro content>

</#macro>


<#macro display_page>

    <html>
    <head>
        <title><@title/></title>
         <link rel="icon" type="image/png" href="https://designhammer.com/sites/default/files/xcode.png"/>
        <link rel="stylesheet" type="text/css" href="/css/styles.css" media="screen" />
       <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet" media="screen">

<script>function formulario(f) {

if (f.titulo.value   == '') { alert ('El nombre esta vacío'); f.titulo.focus(); return false; }
if (f.idioma.value   == '') { alert ('campo idioma vacío'); f.idioma.focus(); return false; }
if (f.precio.value   == '') { alert ('campo precio vacío'); f.precio.focus(); return false; }
if (f.descripcion.value   == '') { alert ('campo descripcion vacío'); f.descripcion.focus(); return false; }
if (f.enlace.value   == '') { alert ('campo enlace vacío'); f.enlace.focus(); return false; }
 return true; }

</script>

<script language="javascript" type="text/javascript">
    //*** Este Codigo permite Validar que sea un campo Numerico
    function Solo_Numerico(variable){
        Numer=parseInt(variable);
        if (isNaN(Numer)){
            return "";
        }
        return Numer;
    }
    function ValNumero(Control){
        Control.value=Solo_Numerico(Control.value);
    }
    //*** Fin del Codigo para Validar que sea un campo Numerico
</script>


    </head>
     
    <body>
    <div id="header">

    <H2> Developer Console - App’s ready?</H2>
    <p>Tu plataforma gratuita para publicar aplicaciones!!!</p>

<ul class="nav nav-tabs">
  <li class="active"><a href="/index">Inicio</a></li>
  <li class="active"><a href="/add">Crear</a></li>
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