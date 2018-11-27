package tpmecanico

class Categoria {
	String nombre;
	boolean isPadre;
	static hasMany =[subcategorias:Categoria]
	static belongsTo=[padre:Categoria]
    static constraints = {
    	padre nullable:true
		nombre blank:false
    }
}
