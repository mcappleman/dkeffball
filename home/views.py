from django.shortcuts import render
from django.views import generic

# Create your views here.


def index(request):
   context = {
        'section': {
            'title': 'Some Title Goes Here',
            'header': 'Some Header Goes Here',
        }
   }
   return render(request, 'home/index.html', context)