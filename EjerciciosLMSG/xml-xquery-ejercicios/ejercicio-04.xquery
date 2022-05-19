for $superheroe in doc('superheroes.xml')/marvel/superheroe
let $nombreSuper := $superheroe/@nombre
let $poderesSuper := $superheroe/@poderes
let $amigosSuper := $superheroe/@amigos
where contains(lower-case($poderesSuper), 'fuerza') and 
contains (lower-case($amigosSuper), 'iron man')
order by $nombreSuper
return <superheroe nombre="{ $nombreSuper }"> { data($superheroe/@nivel) } </superheroe>