from django.db import models

# Create your models here.



class Alunos (models.Model):
    name = models.CharField(max_length=45)
    age = models.IntegerField()
