package tpmecanico

class Mecanico {
	String nombre
	String apellido
	String dni
	static hasMany =[arreglosAsignados:Arreglo]
    static constraints = {
		nombre blank:false
		apellido blank:false
		dni blank:false, unique: true
		arreglosAsignados nullable:true
	}
}
