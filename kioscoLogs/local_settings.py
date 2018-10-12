ALLOWED_HOSTS = ['*']
DEBUG = True
LOCAL_SETTINGS = True

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'kioscos_logs_db',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': '',
        'PORT': '',
    }
}
