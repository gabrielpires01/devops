from email.policy import default
from django.db import models

# Create your models here.
class Hello(models.Model):
	greeting = models.CharField(max_length=254, default="Hello")