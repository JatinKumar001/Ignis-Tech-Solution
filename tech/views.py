from django.shortcuts import redirect, render
from .models import EventDetail

def index(request):
    allevent = []
    eventitem = EventDetail.objects.values('location')
    item = {i['location'] for i in eventitem}
    for i in item:
        print(i)
        event = EventDetail.objects.filter(location=i)
        allevent.append(event)
    
    params = {'allevent' : allevent}
    return render(request, "tech/index.html", params)

def additem(request):
    if request.method=="POST":
        event_name = request.POST.get('username', '')
        date = request.POST.get('eventdate', '')
        time = request.POST.get('eventtime', '')
        location = request.POST.get('location', '')
        image = request.POST.get('image-input', '')
        eventdetail = EventDetail(event_name=event_name, date=date, time=time, location=location, image=image)
        eventdetail.save()
        redirect("/")
    return render(request, "tech/add_item.html")

    
