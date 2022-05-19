for $superheroe in doc('superheroes.xml')/marvel/superheroe
let $nombreSuper := $superheroe/@nombre
let $poderesSuper := $superheroe/@poderes
let $amigos := $superheroe/@amigos
where contains($poderesSuper, 'fuerza') and contains($amigos, 'Iron Man')
order by $nombreSuper
return <superheroe> { data($nombreSuper) } </superheroe>
