<#include "base.ftl">

<#macro content>
 
  <fieldset>
        <legend>Nueva Aplicacion</legend>

<form class="form-horizontal">
    <div class="form-group">
        <label class="control-label col-xs-3">Titulo:</label>
        <div class="col-xs-9">
            <input type="text" name="Titulo" class="form-control" id="inputEmail" placeholder="Nombre de la app">
        </div>
    </div>

<!--
    <div class="form-group">
        <label class="control-label col-xs-3">Plataforma:</label>
        <div class="col-xs-2">
            <label class="radio-inline">
                <input type="radio" name="genderRadios" value="iOS"> iOS
            </label>
        </div>
        <div class="col-xs-2">
            <label class="radio-inline">
                <input type="radio" name="genderRadios" value="Android"> Android
            </label>
        </div>
         <div class="col-xs-2">
            <label class="radio-inline">
                <input type="radio" name="genderRadios" value="debian"> Debian
            </label>
        </div>
    </div>-->


    <div class="form-group">
        <label class="control-label col-xs-3" >Precio</label>
        <div class="col-xs-9">
            <input type="text" name="Precio" class="form-control" placeholder="Si es gratis escribe 0">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-xs-3">Descripcion;</label>
        <div class="col-xs-9">
            <textarea rows="3" name="Descripcion" class="form-control" placeholder="Breve descripcion de la app"></textarea>
        </div>
    </div>

    <!--<div class="form-group">
        <div class="col-xs-offset-3 col-xs-9">
            <label class="checkbox-inline">
                <input type="checkbox" name="acepto" value="agree">  Accepto <a href="#">Terminos y condiciones</a>.
            </label>
        </div>
    </div>-->

    <br>
    <div class="form-group">
        <div class="col-xs-offset-3 col-xs-9">
            <input type="submit" class="btn btn-primary" value="Enviar">
            <input type="reset" class="btn btn-default" value="Limpiar">
        </div>
    </div>
</form>



  </fieldset>
  <br/>

</#macro>
   
<@display_page/>    