for $marvel in doc('superheroes.xml')/marvel
let $mediaNivel := avg($marvel/superheroe/@nivel)
return <media>{data($mediaNivel)}</media>