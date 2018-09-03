from django.db import models

class Team(models.Model):
    name = models.CharField(max_length=200)
    wins = models.IntegerField(default=0)
    losses = models.IntegerField(default=0)
    ties = models.IntegerField(default=0)

    def __str__(self):
        return self.name


class Player(models.Model):
    name = models.CharField(max_length=200)
    position = models.CharField(max_length=4)

    def __str__(self):
        return self.name + ", " + self.position


class PlayerWeek(models.Model):
    player = models.ForeignKey(Player, on_delete=models.PROTECT)
    year = models.IntegerField(default=1999)
    week = models.IntegerField(default=0)
    points = models.FloatField(default=0)

    def __str__(self):
        return self.player + ", " + self.year + ", " + self.week + ", " + self.points
    

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


    def __str__(self):
        return self.team.name + ", " + self.year + ", " + self.week 

class Matchup(models.Model):
    winner = models.ForeignKey(Lineup, related_name="winner", on_delete=models.CASCADE)
    loser = models.ForeignKey(Lineup, related_name="loser", on_delete=models.CASCADE)
    year = models.IntegerField(default=1999)
    week = models.IntegerField(default=0)

    def __str__(self):
        return self.year + ", " + self.week + ", " + self.winner.name + ", " + self.loser.name
    