package tpmecanico

class TipoArreglo {
	String nombre;
	float precio;

    static constraints = {
		nombre blank : false
		precio min: 0.0F, blank : false
    }
}
