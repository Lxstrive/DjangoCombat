# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-06-15 00:56
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0011_auto_20180615_0054'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='detail',
            field=models.TextField(verbose_name='\u8bfe\u7a0b\u8be6\u60c5'),
        ),
    ]
