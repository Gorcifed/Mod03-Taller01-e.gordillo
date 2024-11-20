from db import db
from sqlalchemy import text
from flask_login import UserMixin

class Usuario(UserMixin, db.Model):
    __tablename__ = 'usuario'
    id = db.Column(db.Integer, primary_key = True)
    alias = db.Column(db.String(45), nullable = False)
    contrasena = db.Column(db.String(45), nullable = False)
    es_admin = db.Column(db.Integer, nullable = False)
