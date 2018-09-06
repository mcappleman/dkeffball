from django.db import models
from django.utils import timezone

from teams.models import Lineup

class Matchup(models.Model):
    winner = models.ForeignKey(Lineup, related_name="winner", on_delete=models.CASCADE)
    loser = models.ForeignKey(Lineup, related_name="loser", on_delete=models.CASCADE)

    def __str__(self):
        return str(self.year) + ", " + str(self.week) + ", " + self.winner.team.name + ", " + self.loser.team.name


    def save(self, *args, **kwargs):
        if not valid_lineups:
            raise ValueError('Lineups must be the same week and year')

        if not self.pk:
            # This will only get run if the object is not in the database
            self.assign_wins()

        super().save(*args, **kwargs)


    def valid_lineups(self):
        if not (self.winner.week == self.loser.week and self.winner.year == self.loser.year):
            return False
        
        if self.winner.points < self.loser.points:
            temp = self.loser
            self.loser = self.winner
            self.winner = temp

        return True 


    def assign_wins(self):
        if self.winner.points > self.loser.points:
            self.winner.team.wins += 1
            self.loser.team.losses += 1
        elif self.winner.points == self.loser.points:
            self.winner.team.ties += 1
            self.loser.team.ties +=1

