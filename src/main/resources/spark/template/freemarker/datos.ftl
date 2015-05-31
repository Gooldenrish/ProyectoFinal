
<#include "base.ftl">
<#macro content>
<table class="table table-bordered">
<tr class="success">
<th>Titulo</th> <th>Plataforma</th> <th>Idiomas</th> <th>Precio</th> <th>Descripcion</th> <th>Enlace</th> <th class="danger">Accion</th>
</tr>
<#list Aplicaciones as app>
<td>${app.titulo}</td> <td>${app.plataforma}</td> <td>${app.idioma}</td> <td>${app.precio}</td> <td>${app.descripcion}</td> <td>${app.enlace}</td><td class="danger"><a href="drop/${app.titulo}" class="btn btn-danger">Eliminar</a> <a href="" class="btn btn-warning">Editar</a></td>
</tr>
</#list>
</table>
</div>
<nav>
<ul class="pagination">
  <li class="disabled">
    <a href="#">&laquo;</a>
  </li>
  <li class="active">
    <a href="#">1 <span class="sr-only">(página actual)</span></a>  </li>
    <li><a href="#">2</a></li>
	<li><a href="#">3</a></li>
</ul>
</nav>
</#macro>
<@display_page/>
