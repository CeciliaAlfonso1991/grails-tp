package tpmecanico

class Repuesto {
	String nombre;
	String marca;
	String especificacion;
	byte[] foto;
	float precio;
	String datosRemito;
	float costoDeFabrica
	int stock
	static belongsTo=[categoria:Categoria]

    static constraints = {
    	categoria nullable:false
    	foto nullable:true
		marca nullable:true
		precio blank:false, min: 0.0F
		costoDeFabrica blank:false, min: 0.0F
		stock blank:false, min: 0
		nombre blank:false
		marca blank:false
		especificacion nullable:true
    }
}
