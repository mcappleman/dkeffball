from django.db import models
from django.utils import timezone

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
    player = models.ForeignKey(Player, on_delete=models.PROTECT)
    year = models.IntegerField(default=1999)
    week = models.IntegerField(default=0)
    points = models.FloatField(default=0)


    def __str__(self):
        return self.player.name + ", " + str(self.year) + ", " + str(self.week) + ", " + str(self.points)


    def valid_week(self):
        if self.week < 1 or self.week > 16:
            return False
        return True


    def valid_year(self):
        if self.year < 2010 or self.year > timezone.now().year:
            return False
        return True
    
