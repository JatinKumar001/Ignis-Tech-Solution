from django.db import models

class EventDetail(models.Model):
    evnet_id = models.AutoField(primary_key=True)
    event_name = models.CharField(max_length=70)
    date = models.DateField()
    time = models.TimeField()
    location = models.CharField(max_length=70)
    image = models.ImageField(null=True, blank=True, upload_to="images/")
    is_liked = models.BooleanField(default=False)

    def __str__(self):
        return self.event_name
