<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Mcanic</title>
</head>
<body>
    
    <content tag="nav">
    
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Capas <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Crear <span class="caret"></span></a>
            <ul class="dropdown-menu">
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li>
                            <g:link class="linkg" controller="${c.logicalPropertyName}">${c.logicalPropertyName}</g:link>
                          
                        </li>
                    </g:each>   
            </ul>
        </li>
    </content>
    <div id="presentacion">
    <br>
    <p>
    <h1>Crea arreglos, crea mecánicos, inicia pedidos de arreglos, elimina y crea categorías.
    </h1>
    <h1> Todo para administrar tu taller de manera fácil y rápida.</h1>
    </p>
    <br>
    </div> 
    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="imagen-principal.jpg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="columns">
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <div class="column">
                            <g:link controller="${c.logicalPropertyName}"> Administrar ${c.logicalPropertyName}</g:link>  
                        </div>
                    </g:each>           
        </section>
    </div>
      <div class="datos">
        <p><small>By: Alfonso Cecilia, Gutierrez Nicolas, Felottini Walter 27/11/2018</small></p>
        </div>
   
</body>
</html>
