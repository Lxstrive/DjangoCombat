# !/usr/bin/env python 
# -*- coding:utf-8 -*-
__author__ = '_X.xx_'
__date__ = '2018/6/8 18:16'

from users.models import EmailVerifyRecord
from random import Random
from LxDjango.settings import EMAIL_FROM
from django.core.mail import send_mail


def random_str(randomlength=8):
    str = ''
    chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789'
    length = len(chars) - 1
    random = Random()
    for i in range(randomlength):
        str += chars[random.randint(0, length)]
    return str


def send_register_email(email, send_type="register"):
    email_record = EmailVerifyRecord()
    if send_type == 'update_email':
        code = random_str(4)
    else:
        code = random_str(16)
    email_record.code = code
    email_record.email = email
    email_record.send_type = send_type

    email_title = ""
    email_body = ""

    if send_type == 'register':
        email_title = '__X.xx__在线网注册激活链接'
        email_body = "请点击下面的链接激活你的账号: http://127.0.0.1:8000/active/{0}".format(
            code)
        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            pass
    elif send_type == 'forget':
        email_title = '__X.xx__在线网密码重置链接'
        email_body = "请点击下面的链接重置您的密码: http://127.0.0.1:8000/reset/{0}".format(
            code)
        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            pass
    elif send_type == 'update_email':
        email_title = '__X.xx__在线邮箱重置验证码'
        email_body = "您的验证码为:{0}".format(code)
        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            pass
