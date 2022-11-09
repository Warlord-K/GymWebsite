from django.db import models
from django.forms import ModelForm
from django import forms


class User(models.Model):
    member_id = models.AutoField(primary_key=True)
    first_name = models.CharField(('First Name'), max_length=50)
    last_name = models.CharField(('Last Name'), max_length=50)
    mobile_number = models.CharField(('Mobile Number'), max_length=10, unique=True)
    email = models.EmailField(null=True, blank=True)
    address = models.CharField(max_length=300, blank=True)
    medical_history = models.CharField(('Medical History'), max_length=300, blank=True, default='None')
    admitted_on = models.DateField(auto_now_add=True)
    registration_date = models.DateField(('Registration Date'), default='dd/mm/yyyy')
    registration_upto = models.DateField()
    dob = models.DateField(default='dd/mm/yyyy')
    

    amount = models.CharField(max_length=30)

    photo = models.FileField(upload_to='photos/', blank=True)
    notification = models.IntegerField(default=2, blank=True)


    def __str__(self):
        return self.first_name + ' ' + self.last_name



class ProfileForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(ProfileForm, self).__init__(*args, **kwargs)
        self.fields['first_name'].error_messages = {'required': 'Please enter first name'}
        self.fields['last_name'].error_messages = {'required': 'Please enter last name'}

    class Meta:
        model=User
        # fields = ['first_name', 'last_name', 'mobile_number', 'email', 'address', 'subscription_type', 'subscription_period', 'amount']
        fields = '__all__'
        exclude = ['registration_upto']
        widgets = {
        'registration_date': forms.DateInput(attrs={'class': 'datepicker form-control', 'type': 'date'}),
        'address': forms.Textarea(attrs={'cols': 80, 'rows': 3}),
        'medical_history': forms.Textarea(attrs={'cols': 80, 'rows': 3}),
        'dob': forms.DateInput(attrs={'class': 'datepicker form-control', 'type': 'date'}),
        'photo': forms.FileInput(attrs={'accept': 'image/*;capture=camera'})
        }


    def clean_amount(self):
        amount = self.cleaned_data.get('amount')
        if not amount.isdigit():
            raise forms.ValidationError('Amount should be a number')
        return amount


