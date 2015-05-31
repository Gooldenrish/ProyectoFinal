<#include "base.ftl">

<#macro content>

<h1 ALIGN=center>Añadir Nueva Aplicacion</h1>

<form class="form-horizontal" name="agregar" action="add" method="post" onsubmit="return formulario(this)">  <div class="row">
    <div class="form-group">
        <label class="control-label col-xs-3">Titulo:</label>
        <div class="col-xs-2">
            <input type="text" name="titulo" class="form-control" placeholder="nombre de la app">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-xs-3">Plataforma:</label>
        <div class="col-xs-1">
            <label class="radio-inline">
                <input type="radio" name="plataforma" value="iOS"> iOS
            </label>
        </div>
        <div class="col-xs-1">
            <label class="radio-inline">
                <input type="radio" name="plataforma" value="Android"> Android
            </label>
        </div>
         <div class="col-xs-1">
            <label class="radio-inline">
                <input type="radio" name="plataforma" value="debian"> Debian
            </label>
        </div>
    </div>


            <div class="form-group">
        <label class="control-label col-xs-3">Idioma:</label>
        <div class="col-xs-2">
            <input type="text" name="idioma" class="form-control" placeholder="idiomas instalados">
        </div>
    </div>


            <div class="form-group">
        <label class="control-label col-xs-3">Precio</label>
        <div class="col-xs-2">
            <input type="text" name="precio" class="form-control" onkeyUp="return ValNumero(this)" placeholder="solo valores numericos">
        </div>
    </div>


            <div class="form-group">
        <label class="control-label col-xs-3">Descripcion:</label>
        <div class="col-xs-4">
            <input type="text" name="descripcion" class="form-control" placeholder="Breve Descripcion">
        </div>
    </div>

            <div class="form-group">
        <label class="control-label col-xs-3">Enlace:</label>
        <div class="col-xs-2">
            <input type="text" name="enlace" class="form-control" placeholder="web oficial">
        </div>
    </div>

     <div class="form-group">
        <div class="col-xs-offset-3 col-xs-9">
            <label class="checkbox-inline">
                <input type="checkbox" name="acepto" value="agree">  Acepto <a href="#">Terminos y condiciones</a>.
            </label>
        </div>

    <br>   <br>   <br>
    <div class="form-group">
        <div class="col-xs-offset-3 col-xs-9">
            <input type="submit" class="btn btn-primary" value="Enviar">
            <input type="reset" class="btn btn-default" value="Limpiar">
        </div>
    </div>  <br>
     </div>
</form>



 
  <br/>

</#macro>
   
<@display_page/>    


