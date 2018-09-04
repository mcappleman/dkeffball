from django.db import models
from django.utils import timezone

class Team(models.Model):
    name = models.CharField(max_length=200)
    wins = models.IntegerField(default=0)
    losses = models.IntegerField(default=0)
    ties = models.IntegerField(default=0)

    def __str__(self):
        return self.name


class Lineup(models.Model):
    team = models.ForeignKey(Team, on_delete=models.PROTECT)
    year = models.IntegerField(default=timezone.now().year)
    week = models.IntegerField(default=0)
    points = models.IntegerField(default=0)

    def __str__(self):
        return self.team + ", " + str(self.year) + ", " + str(self.week)


class LineupPosition(models.Model):
    name = models.CharField(max_length=4)

    def __str__(self):
        return self.name
