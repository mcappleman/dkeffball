from django.db import models
from django.utils import timezone

class Team(models.Model):
    name = models.CharField(max_length=200)
    wins = models.IntegerField(default=0)
    losses = models.IntegerField(default=0)
    ties = models.IntegerField(default=0)

    def __str__(self):
        return self.name


    def save(self, *args, **kwargs):
        if not self.valid_wins():
            raise ValueError('Not a valid amount of wins')
        elif not self.valid_losses():
            raise ValueError('Not a valid amount of losses')
        elif not self.valid_ties():
            raise ValueError('Not a valid amount of ties')
        
        super().save(*args, **kwargs)


    def valid_wins(self):
        if self.wins < 0:
            return False
        return True


    def valid_losses(self):
        if self.losses < 0:
            return False
        return True


    def valid_ties(self):
        if self.ties < 0:
            return False
        return True


class Lineup(models.Model):
    team = models.ForeignKey(Team, on_delete=models.PROTECT)
    year = models.IntegerField(default=timezone.now().year)
    week = models.IntegerField(default=0)
    points = models.FloatField(default=0)

    def __str__(self):
        return self.team.name + ", " + str(self.year) + ", " + str(self.week)


    def save(self, *args, **kwargs):
        if not self.valid_week():
            raise ValueError('Not a valid week')
        elif not self.valid_year():
            raise ValueError('Not a valid year')
        
        super().save(*args, **kwargs)


    def valid_week(self):
        if self.week < 1 or self.week > 16:
            return False
        return True


    def valid_year(self):
        if self.year < 2010 or self.year > timezone.now().year:
            return False
        return True


class LineupPosition(models.Model):
    name = models.CharField(max_length=4)

    def __str__(self):
        return self.name
    

    def save(self, *args, **kwargs):
        if not self.valid_name():
            raise ValueError('Not a valid week')
        
        super().save(*args, **kwargs)


    def valid_name(self):
        valid_name_list = ['QB', 'RB', 'WR', 'TE', 'FLEX', 'K', 'DST', 'BEN', 'IR']
        valid = False

        for vn in valid_name_list:
            if self.name == vn:
                valid = True

        return valid


class NFLTeam(models.Model):
    name = models.CharField(max_length=4)
    conference = models.CharField(max_length=3)
    division = models.CharField(max_length=5)

    def __str__(self):
        return self.name

    
    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)

