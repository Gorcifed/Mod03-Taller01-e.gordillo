from db import db
from sqlalchemy import text

class Perro(db.Model):
    __tablename__ = 'perro'
    id = db.Column(db.Integer, primary_key = True)
    nombre = db.Column(db.String(45), nullable = False)
    raza = db.Column(db.String(45), nullable = False)
    edad = db.Column(db.NUMERIC(10,4), nullable = False)
    peso = db.Column(db.Integer, nullable = False)
