# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-06-11 19:38
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0008_course_teacher'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='teacher_tell',
            field=models.CharField(blank=True, max_length=300, null=True, verbose_name='\u8001\u5e08\u544a\u8bc9\u4f60'),
        ),
        migrations.AddField(
            model_name='course',
            name='youneed_know',
            field=models.CharField(blank=True, max_length=300, null=True, verbose_name='\u8bfe\u7a0b\u987b\u77e5'),
        ),
    ]
