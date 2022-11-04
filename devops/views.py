from django.shortcuts import render
from requests import Response

from devops.models import Hello

# Create your views here.
def get_greeting(request):
	if not Hello.objects.filter(greeting="Olá inoa").exists():
		hello = Hello(greeting="Olá inoa")
		hello.save()
			

	if request.method == 'GET':
		try: 
			greeting = Hello.objects.filter(greeting="Olá inoa")
		except:
			return Response(request)
		greetings = {"greeting": greeting[0]}
		return render(request, "devops/greeting.html", greetings)
		