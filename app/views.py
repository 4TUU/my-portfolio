from django.shortcuts import render

# Create your views here.
def home(request):
    return render(request, 'home.html')
def patients(request):
    return render(request, 'tab1.html')
def doctors(request):
    return render(request, 'tab2.html')
def appointments(request):
    return render(request, 'tab3.html')
def finances(request):
    return render(request, 'tab4.html')