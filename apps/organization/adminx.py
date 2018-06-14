# !/usr/bin/env python 
# -*- coding:utf-8 -*-
__author__ = '_X.xx_'
__date__ = '2018/6/7 23:42'

import xadmin
from .models import *


class CityDictAdmin(object):
    list_display = ['name', 'desc', 'add_time']
    search_fields = ['name', 'desc']
    list_filter = ['name', 'desc', 'add_time']


class CourseOrgAdmin(object):
    list_display = ['name', 'desc', 'click_nums', 'fav_nums', 'address', 'city',
                    'add_time']
    search_fields = ['name', 'desc', 'click_nums', 'fav_nums', 'address',
                     'city']
    list_filter = ['name', 'desc', 'click_nums', 'fav_nums', 'address', 'city',
                   'add_time']
    # relfield_style = 'fk-ajax'

class TeacherAdmin(object):
    list_display = ['org', 'name', 'work_years', 'work_company',
                    'work_position', 'points', 'add_time']
    search_fields = ['org', 'name', 'work_years', 'work_company',
                     'work_position', 'points']
    list_filter = ['org', 'name', 'work_years', 'work_company', 'work_position',
                   'points', 'add_time']


xadmin.site.register(CityDict, CityDictAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(Teacher, TeacherAdmin)
