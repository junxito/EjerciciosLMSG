for $superheroe in doc('superheroes.xml')/marvel/superheroe
let $nombreSuper := $superheroe/@nombre
let $poderesSuper := $superheroe/@poderes
let $amigosSuper := $superheroe/@amigos
let $nivelSuper := $superheroe/@nivel
order by $nombreSuper
return <superheroe>
    <nombre>{ data($nombreSuper) }</nombre>
    <poderes>{ data($poderesSuper) }</poderes>
    <amigos>{ data($amigosSuper) }</amigos>
    <nivel>{ data($nivelSuper) }</nivel>
</superheroe>