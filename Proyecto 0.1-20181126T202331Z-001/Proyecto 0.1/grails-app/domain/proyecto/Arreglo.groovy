package tpmecanico

class Arreglo {
	String observaciones;

	static hasMany = [repuestos:Repuesto]
	
	static belongsTo=[mecanico: Mecanico ,tipo:TipoArreglo]

    static constraints = {
    	observaciones maxSize:500
		repuestos nullable:true
		mecanico nullable:false
		tipo nullable:false
    }
}
