# Generated by Django 2.1 on 2018-09-04 19:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('players', '0003_auto_20180904_1903'),
    ]

    operations = [
        migrations.AlterField(
            model_name='playerweek',
            name='lineup',
            field=models.ForeignKey(default=None, null=True, on_delete=django.db.models.deletion.PROTECT, to='teams.Lineup'),
        ),
    ]