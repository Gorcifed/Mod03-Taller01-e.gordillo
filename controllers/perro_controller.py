from models.cuidador import Cuidador
from models.perro import Perro

def retornar_perros_Lassie():
    return Perro.query.filter_by(nombre="Lassie").count()

def retornar_perros_Cuidador():
    return Perro.query.filter(Perro.peso<3)
