from django.db import models

from teams.models import Lineup

class Matchup(models.Model):
    winner = models.ForeignKey(Lineup, related_name="winner", on_delete=models.CASCADE)
    loser = models.ForeignKey(Lineup, related_name="loser", on_delete=models.CASCADE)
    year = models.IntegerField(default=1999)
    week = models.IntegerField(default=0)

    def __str__(self):
        return self.year + ", " + self.week + ", " + self.winner.name + ", " + self.loser.name
    
