PREFIX : <http://www.utmachala.edu.ec/grupo1/inmobiliaria/>

SELECT ?inmueble  ?ubicacion ?direccion ?barrio ?barrioLabel ?superficie_ancho ?superficie_largo  ?servicios
WHERE {
    ?inmueble rdf:type :Inmuebles.
    ?inmueble :situado_en ?ubicacion .
    ?ubicacion :direccion ?direccion .
    ?ubicacion :situada_en_el_barrio ?barrio .
    ?barrio rdfs:label ?barrioLabel .
  
    ?inmueble :superficie_ancho ?superficie_ancho.
    ?inmueble :superficie_largo ?superficie_largo.
    ?inmueble :dispone_servicios_basicos ?servicios.

	BIND(?superficie_ancho * ?superficie_largo AS ?superficie_inmueble)
  	FILTER(?superficie_inmueble >0 )
	
	FILTER (?barrioLabel IN ("San Jacinto"))

}


