<#include "base.ftl">
<#macro content>
<table class="table table-bordered">
<tr class="active">
<th>Titulo</th> <th>Plataforma</th> <th>Idiomas</th> <th>Precio</th> <th>Descripcion</th> <th>Enlace</th> <th class="danger">Accion</th>
</tr>
<#list Aplicaciones as app>
<td class="success">${app.titulo}</td> <td class="success">${app.plataforma}</td> <td class="success">${app.idioma}</td> <td class="success">${app.precio}</td> <td class="success">${app.descripcion}</td> <td class="success">${app.enlace}</td><td class="danger"><a href="drop/${app.titulo}" class="btn btn-danger">Eliminar</a> <a href="" class="btn btn-warning"  onmouseDown="alert('funcion no disponible')">Editar</a></td>
</tr>
</#list>
</table>
</div>
<nav>
<ul class="pagination">
  <li class="active">
    <a href="#" onmouseDown="alert('no disponible')">1 <span class="sr-only">(página actual)</span></a>  </li>
    <li><a href="#"  onmouseDown="alert('no disponible')">2</a></li>
	<li><a href="#" onmouseDown="alert('no disponible')">3</a></li>
</ul>
</nav>
</#macro>
<@display_page/>