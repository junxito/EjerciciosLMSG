for $superheroe in doc('superheroes.xml')/marvel/superheroe
let $nombreSuperheroe := $superheroe/@nombre
where ends-with($nombreSuperheroe, 'a')
return <superheroe> { $superheroe } </superheroe>