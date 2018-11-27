<!doctype html>
<html>
<head>
		<meta name="layout" content="main" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
	
	<div id="nave" class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index">Solicitud de arreglo </g:link></li>     
            </ul>
	</div>   
    <div class="cajita">
          	  	<h3 style="color: white;"> Solicitud relacionada a patente: ${session.patente}</h3>
				<g:link controller="cliente">Pedir mecanico</g:link>
				<br>
				<label>Ingrese su número de patente</label>
            	<g:form controller="cliente" action="solicitarMecanico">	 
		       		<div id="formularioSolicitud"> 
		        		<g:field type="text" name="patente" value="Por ejemplo MNO 225"/>
						<br>
		            	<g:textArea type="text" name="descripcion" rows="5" cols="40">Ingrese una breve descripcion</g:textArea>
						<br>
		        		<g:field id="lat" type="hidden" name="latitude"/>
		        		<g:field id="lon" type="hidden" name="longitude"/>
						<br>	
                   		 <!-- Script para adjuntar ubicacion -->
		            	<script type="text/javascript">
		            		function solicitarUbicacion(){
		            			navigator.geolocation.getCurrentPosition(function(pos){
		            				alert('tu Ubicacion es'+pos.coords.latitude+' | '+pos.coords.longitude);
		            				document.getElementById('lat').value = pos.coords.latitude;
		            				document.getElementById('lon').value = pos.coords.longitude;
		            			});
		            		}
		            	</script>
		        	</div>
               
                		<fieldset class="buttons">
		            		<g:field name="btnU" type="button" onclick="solicitarUbicacion()" value="Adjuntar Mi Ubicacion"/>
                    		<g:submitButton name="env" class="save" value="Solicitar" />
                		</fieldset>
			 	
				</g:form>
       
	</div>
</body>
</html>