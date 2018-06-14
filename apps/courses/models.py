# _*_ coding: utf-8 _*_
from __future__ import unicode_literals
from datetime import datetime
from django.db import models
from organization.models import CourseOrg, Teacher
from DjangoUeditor.models import UEditorField


class Course(models.Model):
    """
        CoursesAPP models设计
        课程表设计
    """
    course_org = models.ForeignKey(CourseOrg, verbose_name=u'课程机构', null=True,
                                   blank=True)
    name = models.CharField(max_length=50, verbose_name=u'课程名')
    desc = models.CharField(max_length=300, verbose_name=u'课程描述')
    detail = models.TextField(verbose_name=u'课程详情')
    is_banner = models.BooleanField(default=False, verbose_name=u'是否轮播')
    teacher = models.ForeignKey(Teacher, null=True, blank=True)
    degree = models.CharField(verbose_name=u'难度',
                              choices=(
                                  ('cj', u'初级'), ('zj', u'中级'), ('gj', u'高级')),
                              max_length=2)
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长(分钟数)')
    students = models.IntegerField(default=0, verbose_name=u'学习人数')
    fav_nums = models.IntegerField(default=0, verbose_name=u'收藏人数')
    image = models.ImageField(upload_to='course/%Y/%m', verbose_name='封面图',
                              max_length=100)
    click_nums = models.IntegerField(default=0, verbose_name=u'点击数')
    category = models.CharField(max_length=30, verbose_name=u'课程类别',
                                default='后端')
    tag = models.CharField(default='', verbose_name=u'课程标签', max_length=10)
    youneed_know = models.CharField(max_length=300, verbose_name=u'课程须知',
                                    null=True, blank=True)
    teacher_tell = models.CharField(max_length=300, verbose_name=u'老师告诉你',
                                    null=True, blank=True)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'课程'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

    def get_zj_nums(self):
        """
            获取课程章节数
        :return:
        """
        all_lessons = self.lesson_set.all().count()
        return all_lessons

    get_zj_nums.short_description = "章节数"

    def go_to(self):
        from django.utils.safestring import mark_safe
        return mark_safe("<a href='https://blog.csdn.net/weixin_41827390/'>跳转</>")

    go_to.short_description = "跳转"

    def get_learn_users(self):
        """
            获取学习用户
        :return:
        """
        return self.usercourse_set.all()[:5]

    def get_course_lesson(self):
        # 获取课程所有章节
        return self.lesson_set.all()


class BannerCourse(Course):
    class Meta:
        verbose_name = u'轮播课程'
        verbose_name_plural = verbose_name
        proxy = True


class Lesson(models.Model):
    """
        课程章节表设计
        课程表与章节表是一对多的关系
        章节表外键引用课程表
    """
    course = models.ForeignKey(Course, verbose_name=u'课程')
    name = models.CharField(max_length=100, verbose_name=u'章节')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'章节'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name

    def get_lesson_video(self):
        # 获取所有章节视频
        return self.video_set.all()


class Video(models.Model):
    """
        视频表设计
        视频表与章节表是一对多关系
        视频表外键引用章节表
    """
    lesson = models.ForeignKey(Lesson, verbose_name=u'章节')
    name = models.CharField(max_length=100, verbose_name=u'视频')
    url = models.CharField(max_length=200, verbose_name=u'访问地址', default='')
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长(分钟数)')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'视频'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class CourseResource(models.Model):
    """
        课程资源下载表设计
        引用课程外键
    """
    course = models.ForeignKey(Course, verbose_name=u'课程')
    name = models.CharField(max_length=100, verbose_name=u'名称')
    download = models.FileField(upload_to='course/resource/%Y/%m',
                                verbose_name=u'课程资源', max_length=100)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'课程资源'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name
