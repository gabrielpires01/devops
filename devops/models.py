from email.policy import default
from enum import unique
from django.db import models

# Create your models here.
class Hello(models.Model):
	id = models.AutoField(primary_key=True)
	greeting = models.CharField(max_length=254, default="Hello", unique=True)