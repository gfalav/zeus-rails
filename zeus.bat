rails g scaffold pais pais:string
rails g scaffold provincia pais_id:integer provincia:string
rails g scaffold departamento provincia_id:integer departamento:string
rails g scaffold municipio departamento_id:integer municipio:string
rails g scaffold localidad municipio_id:integer localidad:string
rails g scaffold barrio localidad_id:integer barrio:string
rails g scaffold calle  barrio_id:integer calle:string
rails g scaffold direccion calle_id:integer nro:integer pdepto:string acceso:string
rails g scaffold enumerado radical:string descripcion:string

rails g scaffold cliente apellido:string apellido2:string nombres:string documento:string tipodoc_id:integer emisordoc_id:integer contacto:string ciiu_id:integer tcliente_id:integer direccion_id:integer
rails g scaffold cliente_documento cliente_id:integer documento:string tipodoc_id:integer emisordoc_id:integer vencimiento:date codseg:string
rails g scaffold cliente_telefono cliente_id:integer telefono:decimal tipotel_id:integer
rails g scaffold cliente_email cliente_id:integer email:string tipoemail_id:integer
rails g scaffold cliente_web cliente_id:integer web:string tipoweb_id:integer

listo hasta acá

rails g scaffold cuenta cliente_id:integer nombre:string direccion_id:integer tpago_id:integer timpagado_id:integer tvencimiento_id:integer
rails g scaffold contrato cuenta_id:integer nombre:string tcuit_id:integer tiibb_id:integer tperfact_id:integer econtrato_id:integer fcontratoact:date
rails g scaffold edesal contrato_id:integer tarifa_id:string potvigente:integer fpotvigente:date potoriginal:integer fpotoriginal:date fdetectbadcosfi:date csmofijo:integer eservicio:integer
rails g scaffold suministro nombre:string edesal_id:integer tmedicion_id:integer tconexion_id:integer ttension_id:integer tfase_id:integer direccion_id:integer
rails g scaffold medidor suministro_id:integer tmedidor_id:integer nromedidor:string marca_id:integer modelo:string corriente:string ttension_id:integer tfase_id:integer cteapa:decimal ffabric:date cperds:decimal
rails g scaffold lectura medidor_id:integer tlectura_id:integer flectura:date tconsumo_id:integer lectura:decimal ctelect:decimal consumo:decimal electura_id:integer
rails g scaffold factura contrato_id:integer periodo:integer fdesde:date fhasta:date femision:date fvcto:date fproxvcto:date fupb:date nro:string
rails g scaffold linea factura_id:integer concepto_id:integer importe:decimal leyenda:string
rails g scaffold otrocargo edesal_id:integer concepto_id:integer importe:decimal ffactura:date ecargo_id:integer 
rails g scaffold bonificacion edesal_id:integer linea:integer porcentaje:decimal fdesde:date fhasta:date

rails g scaffold contratofact contrato_id:integer factura_id:integer cuenta_id:integer nombre:string tcuit_id:integer iibb:string tiibb_id:integer tperfact_id:integer econtrato_id:integer
rails g scaffold edesalfact edesal_id:integer factura_id:integer contratofact_id:integer tarifa_id:string potvigente:integer fpotvigente:date potoriginal:integer fpotoriginal:date fdetectbadcosfi:date csmofijo:integer eservicio:integer
rails g scaffold lecturafact lectura_id:integer factura_id:integer medidor_id:integer tlectura_id:integer flectura:date tconsumo_id:integer lectura:decimal ctelect:decimal consumo:decimal
rails g scaffold otrocargofact otrocargo_id:integer factura_id:integer edesal_id:integer concepto_id:integer importe:decimal ffactura:date ecargo_id:integer 
rails g scaffold bonificacionfact bonificacion_id:integer factura_id:integer edesal_id:integer linea:integer porcentaje:decimal fdesde:date fhasta:date