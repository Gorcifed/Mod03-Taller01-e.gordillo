SELECT p.nombre 'Nombre perro', p.raza, p.peso, p.edad, c.nombre 'Nombre cuidador', c.telefono 'Telefono cuidador'
FROM 
	guarderias g 
    JOIN perro p ON p.ID_guarderia = g.ID
    JOIN cuidador c ON c.ID = p.ID_cuidador
WHERE g.Nombre = 'La favorita'
    
    