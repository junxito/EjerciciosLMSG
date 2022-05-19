for $superheroe in doc('superheroes.xml')/marvel/superheroe
let $poderesSuperheroe := $superheroe/@poderes
where contains($poderesSuperheroe, 'fuerza')
return <superheroe nombre="{data($superheroe/@nombre)}"> { data($poderesSuperheroe) } </superheroe>