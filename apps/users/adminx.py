# !/usr/bin/env python 
# -*- coding:utf-8 -*-
__author__ = '_X.xx_'
__date__ = '2018/6/7 20:23'

import xadmin
from xadmin.plugins.auth import UserAdmin
from xadmin import views
from .models import EmailVerifyRecord, Banner, UserProfile
from xadmin.layout import Fieldset, Main, Side, Row
from django.utils.translation import ugettext as _


class UserProfileAdmin(UserAdmin):
    def get_form_layout(self):
        if self.org_obj:
            self.form_layout = (
                Main(
                    Fieldset('',
                             'username', 'password',
                             css_class='unsort no_title'
                             ),
                    Fieldset(_('Personal info'),
                             Row('first_name', 'last_name'),
                             'email'
                             ),
                    Fieldset(_('Permissions'),
                             'groups', 'user_permissions'
                             ),
                    Fieldset(_('Important dates'),
                             'last_login', 'date_joined'
                             ),
                ),
                Side(
                    Fieldset(_('Status'),
                             'is_active', 'is_staff', 'is_superuser',
                             ),
                )
            )
        return super(UserAdmin, self).get_form_layout()


class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


class GlobalSetting(object):
    site_title = '_X.xx_后台管理系统'
    site_footer = '_X.xx_在线网'
    menu_style = 'accordion'


class EmailVerifyRecordAdmin(object):
    """
        注册邮箱验证表到xadmin后台
    """
    # 后台显示列
    list_display = ['code', 'email', 'send_type', 'send_time']
    # 通过字段进行搜索
    search_fields = ['code', 'email', 'send_type']
    # 过滤器筛选功能
    list_filter = ['code', 'email', 'send_type', 'send_time']
    # 修改图标
    model_icon = 'fab fa-apple'


class BannerAdmin(object):
    """
        注册轮播图到xadmin后台
    """
    list_display = ['title', 'image', 'url', 'index', 'add_time']
    # 通过字段进行搜索
    search_fields = ['title', 'image', 'url', 'index']
    # 过滤器筛选功能
    list_filter = ['title', 'image', 'url', 'index', 'add_time']


# 卸载admin自带的User
# from django.contrib.auth.models import User
# xadmin.site.unregister(User)
xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSetting)
# xadmin.site.register(UserProfile, UserProfileAdmin)
xadmin.site.register(EmailVerifyRecord, EmailVerifyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)
