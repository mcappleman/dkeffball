from django.db import models

from players.models import PlayerWeek

class Team(models.Model):
    name = models.CharField(max_length=200)
    wins = models.IntegerField(default=0)
    losses = models.IntegerField(default=0)
    ties = models.IntegerField(default=0)

    def __str__(self):
        return self.name


class Lineup(models.Model):
    team = models.ForeignKey(Team, on_delete=models.PROTECT)
    year = models.IntegerField(default=1999)
    week = models.IntegerField(default=0)
    qb = models.ForeignKey(PlayerWeek, related_name="qb", on_delete=models.CASCADE)
    rb1 = models.ForeignKey(PlayerWeek, related_name="rb1", on_delete=models.CASCADE)
    rb2 = models.ForeignKey(PlayerWeek, related_name="rb2", on_delete=models.CASCADE)
    wr1 = models.ForeignKey(PlayerWeek, related_name="wr1", on_delete=models.CASCADE)
    wr2 = models.ForeignKey(PlayerWeek, related_name="wr2", on_delete=models.CASCADE)
    te = models.ForeignKey(PlayerWeek, related_name="te", on_delete=models.CASCADE)
    flex = models.ForeignKey(PlayerWeek, related_name="flex", on_delete=models.CASCADE)
    dst = models.ForeignKey(PlayerWeek, related_name="dst", on_delete=models.CASCADE)
    k = models.ForeignKey(PlayerWeek, related_name="k", on_delete=models.CASCADE)
    b1 = models.ForeignKey(PlayerWeek, related_name="b1", on_delete=models.CASCADE)
    b2 = models.ForeignKey(PlayerWeek, related_name="b2", on_delete=models.CASCADE)
    b3 = models.ForeignKey(PlayerWeek, related_name="b3", on_delete=models.CASCADE)
    b4 = models.ForeignKey(PlayerWeek, related_name="b4", on_delete=models.CASCADE)
    b5 = models.ForeignKey(PlayerWeek, related_name="b5", on_delete=models.CASCADE)
    b6 = models.ForeignKey(PlayerWeek, related_name="b6", on_delete=models.CASCADE)
    ir = models.ForeignKey(PlayerWeek, related_name="ir", on_delete=models.CASCADE)

