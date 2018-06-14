# _*_ coding: utf-8 _*_

"""LxDjango URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Import the include() function: from django.conf.urls import url, include
    3. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
import xadmin
from django.conf.urls import url, include
from django.contrib import admin
from django.views.generic import TemplateView
from users.views import LoginView, LogoutView, RegisterView, ActiveUserView, \
    ForgetPwdView, ResetView
from users.views import IndexView
from organization.views import OrgView
from django.views.static import serve
from LxDjango.settings import MEDIA_ROOT

urlpatterns = [
    # url(r'^admin/', admin.site.urls),
    url(r'^xadmin/', xadmin.site.urls),
    url('^$', IndexView.as_view(), name="index"),
    url(r'^login/$', LoginView.as_view(), name='login'),
    url(r'^logout/$', LogoutView.as_view(), name='logout'),
    url(r'^register/$', RegisterView.as_view(), name='register'),
    url(r'^captcha/', include('captcha.urls')),
    url(r'^active/(?P<active_code>.*)/$', ActiveUserView.as_view(),
        name='user_active'),
    url(r'^forget/$', ForgetPwdView.as_view(), name='forget_pwd'),
    url(r'^reset/(?P<active_code>.*)/$', ResetView.as_view(), name="reset_pwd"),

    # 课程机构url分发配置
    url(r'^org/', include('organization.urls', namespace='org')),
    # 课程相关url分发配置
    url(r'^course/', include('courses.urls', namespace='course')),
    # 配置讲师相关页面路径
    url(r'^teacher/', include('courses.urls', namespace='teacher')),
    # 用户中心相关url分发配置
    url(r'^users/', include('users.urls', namespace='users')),
    # 配置miedia路径
    url(r'media/(?P<path>.*)$', serve, {'document_root': MEDIA_ROOT}),
    # 配置miedia路径
    # url(r'static/(?P<path>.*)$', serve, {'document_root': STATIC_ROOT}),


]

# 全局404页面配置
handler404 = 'users.views.page_not_found'
handler500 = 'users.views.page_error'
