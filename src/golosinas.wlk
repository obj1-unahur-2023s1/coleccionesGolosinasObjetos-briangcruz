object bombon {
	var peso= 15
	
	method peso() = peso
	method precio()=5
	method esLibreDeGluten()= true
	method gusto()= "frutilla"
	method mordisco(){
		peso= (peso * 0.8) - 1
	}
}

object alfajor {
	var peso= 300
	
	method peso() = peso
	method precio()= 12
	method esLibreDeGluten()= false
	method gusto()= "chocolate"
	method mordisco(){
		peso= (peso * 0.8)
	}
}

object caramelo{
	var peso= 5
	
	method peso() = peso
	method precio()= 1
	method esLibreDeGluten()= true
	method gusto()= "frutilla"
	method mordisco(){
		peso= 0.max(peso - 1)
	}
}

object chupetin{
	var peso= 7
	
	method peso() = peso
	method precio()= 2
	method esLibreDeGluten()= true
	method gusto()= "naranja"
	method mordisco(){
		peso= 2.max(peso * 0.9)
	}
}

object oblea{
	var peso = 250
	
	method peso() = peso
	method precio()= 5
	method esLibreDeGluten()= false
	method gusto()= "vainilla"
	method mordisco(){
		var pesoActual = peso 
		if (peso > 70){pesoActual -= peso*0.5}
		else{pesoActual -= peso * 0.75}
	}
}

object chocolatin{
	var pesoInicial
	var peso
	
	method peso() = peso
	method setPesoInicial(unPeso){
		pesoInicial= unPeso
		self.setearPrimerPeso()
	}
	method setearPrimerPeso(){
		if(peso == null){
			peso == pesoInicial
		}
	}
	method precio()= 0.50 * pesoInicial
	method esLibreDeGluten()= false
	method gusto()= "chocolate"
	method mordisco(){
		peso = 0.max(peso - 2)	
	}
}

object golosinaBaniada{
	var property golosinaBase 
	var pesoBaniado = 4
	
	method peso()= golosinaBase.peso() + pesoBaniado
	method precio()= golosinaBase.precio() + 2
	method gusto()= golosinaBase.gusto()
	method mordisco(){
		golosinaBase.mordisco()
		pesoBaniado = 0.max(pesoBaniado - 2)
	}	
}
//Primero solución
object tutti{
	var property peso = 5
	var property esLibreDeGluten = true

	const gustos = ["frutilla","chocolate","naranja"]
	var cantMordiscos = 0
	
	method precio(){
		var precio = 0
		if(esLibreDeGluten){precio = 7}
		else{precio = 10}
		return precio
	}
	method mordisco(){cantMordiscos += 1}
	method gusto()= gustos.get(cantMordiscos.size())

}
//Tutti con otra solución
object tutti2{
	var property peso = 5
	var property esLibreDeGluten = true
	var gusto2 = frutilla //OTRA SOLUCION
	
	const gustos = ["frutilla","chocolate","naranja"]

	
	method precio(){
		var precio = 0
		if(esLibreDeGluten){precio = 7}
		else{precio = 10}
		return precio
	}
	method mordisco2(){gusto2= gusto2.siguiente()}
	method gusto2()=gusto2
}
object frutilla{
	method siguiente() = chocolate
}
object chocolate{
	method siguiente() = naranja
}
object naranja{
	method siguiente() = frutilla
}
object vainilla{
	method siguiente(){}
}