# Generated by Django 3.2.8 on 2021-10-30 05:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='event',
            options={'ordering': ('-id',)},
        ),
    ]
