from django.db import models
from django.utils import timezone

from teams.models import Lineup

class Matchup(models.Model):
    winner = models.ForeignKey(Lineup, related_name="winner", on_delete=models.CASCADE)
    loser = models.ForeignKey(Lineup, related_name="loser", on_delete=models.CASCADE)
    year = models.IntegerField(default=timezone.now().year)
    week = models.IntegerField(default=0)

    def __str__(self):
        return str(self.year) + ", " + str(self.week) + ", " + self.winner.team.name + ", " + self.loser.team.name
    
