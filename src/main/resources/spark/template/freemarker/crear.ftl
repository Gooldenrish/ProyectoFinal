<#include "base.ftl">

<#macro content>
 


<form class="form-horizontal" name="agregar" action="add" method="post" onsubmit="return formulario(this)">
    <div class="form-group">
        <label class="control-label col-xs-3">Titulo:</label>
        <div class="col-xs-9">
            <input type="text" name="titulo" class="form-control" placeholder="Nombre de la app">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-xs-3">Plataforma:</label>
        <div class="col-xs-2">
            <label class="radio-inline">
                <input type="radio" name="plataforma" value="iOS"> iOS
            </label>
        </div>
        <div class="col-xs-2">
            <label class="radio-inline">
                <input type="radio" name="plataforma" value="Android"> Android
            </label>
        </div>
         <div class="col-xs-2">
            <label class="radio-inline">
                <input type="radio" name="plataforma" value="debian"> Debian
            </label>
        </div>
    </div>


            <div class="form-group">
        <label class="control-label col-xs-3">Idioma:</label>
        <div class="col-xs-9">
            <input type="text" name="idioma" class="form-control" placeholder="Nombre de la app">
        </div>
    </div>


            <div class="form-group">
        <label class="control-label col-xs-3">Precio</label>
        <div class="col-xs-9">
            <input type="text" name="precio" class="form-control" onkeyUp="return ValNumero(this)" placeholder="Nombre de la app">
        </div>
    </div>


            <div class="form-group">
        <label class="control-label col-xs-3">Descripcion:</label>
        <div class="col-xs-9">
            <input type="text" name="descripcion" class="form-control" placeholder="Nombre de la app">
        </div>
    </div>

            <div class="form-group">
        <label class="control-label col-xs-3">Enlace:</label>
        <div class="col-xs-9">
            <input type="text" name="enlace" class="form-control" placeholder="Nombre de la app">
        </div>
    </div>

     <div class="form-group">
        <div class="col-xs-offset-3 col-xs-9">
            <label class="checkbox-inline">
                <input type="checkbox" name="acepto" value="agree">  Accepto <a href="#">Terminos y condiciones</a>.
            </label>
        </div>

    <br>
    <div class="form-group">
        <div class="col-xs-offset-3 col-xs-9">
            <input type="submit" class="btn btn-primary" value="Enviar">
            <input type="reset" class="btn btn-default" value="Limpiar">
        </div>
    </div>
</form>



 
  <br/>

</#macro>
   
<@display_page/>    


