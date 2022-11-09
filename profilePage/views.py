from django.shortcuts import render
from django.http import HttpResponse
from django.db.models.signals import post_save
from notifications.config import my_handler
from .models import ProfileForm
# def model_save(model):
#     post_save.disconnect(my_handler, sender=Member)
#     model.save()
#     post_save.connect(my_handler, sender=Member)

def check_status(request, object):
    object.stop = 1 if request.POST.get('stop') == '1' else 0
    return object
 
def profile(request):
    form = ProfileForm()
    context = {
        'form': form,
    }
    return render(request, 'profile_page.html', context)
