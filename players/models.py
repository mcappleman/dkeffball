from django.db import models
from django.utils import timezone

from teams.models import Lineup, LineupPosition


class Player(models.Model):
    name = models.CharField(max_length=200)
    position = models.CharField(max_length=4)


    def __str__(self):
        return self.name + ", " + self.position


    def valid_position(self):
        self.position = self.position.upper()
        if self.position != 'QB' and self.position != 'RB' and self.position != 'WR' and self.position != 'TE' and self.position != 'DST' and self.position != 'K':
            return False
        return True


    def save(self, *args, **kwargs):
        if not self.valid_position():
            raise ValueError('Not a valid position was given')

        super().save(*args, **kwargs)


class PlayerWeek(models.Model):
    lineup = models.ForeignKey(Lineup, on_delete=models.PROTECT, default=None, blank=True, null=True)
    player = models.ForeignKey(Player, on_delete=models.PROTECT)
    lineup_position = models.ForeignKey(LineupPosition, on_delete=models.PROTECT, default=None, blank=True, null=True)
    year = models.IntegerField(default=timezone.now().year)
    week = models.IntegerField(default=0)
    points = models.FloatField(default=0)


    def __str__(self):
        return self.player.name + ", " + str(self.year) + ", " + str(self.week) + ", " + str(self.points)


    def save(self, *args, **kwargs):
        if self.week == 0:
            self.week = self.lineup.week

        if not self.valid_week():
            self.week = self.lineup.week
            if not self.valid_week():
                raise ValueError('Invalid Week was passed to the PlayerWeek Model')

        if not self.valid_year():
            raise ValueError('Invalid Year was passed to the PlayerWeek Model')

        super().save(*args, **kwargs)


    def valid_week(self):
        if self.week < 1 or self.week > 16:
            return False
        return True


    def valid_year(self):
        if self.year < 2010 or self.year > timezone.now().year:
            return False
        return True
    
