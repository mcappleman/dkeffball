from django.db import models

class Player(models.Model):
    name = models.CharField(max_length=200)
    position = models.CharField(max_length=4)

    def __str__(self):
        return self.name + ", " + self.position

    def valid_position(self):
        self.position = self.position.upper()
        if self.position != 'QB' or self.position != 'RB' or self.position != 'WR' or self.position != 'TE' or self.position != 'DST' or self.position != 'K':
            return False
        return True


class PlayerWeek(models.Model):
    player = models.ForeignKey(Player, on_delete=models.PROTECT)
    year = models.IntegerField(default=1999)
    week = models.IntegerField(default=0)
    points = models.FloatField(default=0)

    def __str__(self):
        return self.player + ", " + self.year + ", " + self.week + ", " + self.points

    def valid_week(self):
        return True
    
