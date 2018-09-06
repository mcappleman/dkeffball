#import datetime

from django.test import TestCase
from django.utils import timezone

from .models import Player, PlayerWeek
from teams.models import Lineup, LineupPosition, Team

class PlayerModelTests(TestCase):
    def test_valid_position_with_correct_position(self):
        """
        valid_position() return True for a correct position name
        """
        player = Player(name="Jay Feely", position="K")
        self.assertIs(player.valid_position(), True)


    def test_valid_position_with_wrong_position(self):
        """
        valid_position() returns False for a position that is not expected
        """
        player = Player(name="Gary Blauman", position="Not")
        self.assertIs(player.valid_position(), False)


def create_player(name, position):
    """
    Create player for PlayerWeek test cases
    """
    return Player.objects.create(name=name, position=position)


def create_lineup(year, week, points):
    """
    Create a lineup for test cases
    """
    team = Team.objects.create(name='Test', wins=1, losses=0, ties=0)
    return Lineup.objects.create(team=team, year=year, week=week, points=points)


def create_lineup_position(name):
    """
    Create a lineup position for test cases
    """
    return LineupPosition.objects.create(name=name)


class PlayerWeekModelTests(TestCase):
    def test_valid_week_positive(self):
        """
        valid_week() returns True for a valid week
        """
        player = create_player('Joe Montana', 'QB')    
        lineup = create_lineup(2018, 1, 105)
        pw = PlayerWeek(lineup=lineup, player=player, week=1, year=2018, points=15)
        self.assertIs(pw.valid_week(), True)


    def test_valid_week_with_week_below_1(self):
        """
        valid_week() returns False for a week that is below 1
        """
        player = create_player('Joe Montana', 'QB')    
        pw = PlayerWeek(player=player, week=0, year=2018, points=15)
        self.assertIs(pw.valid_week(), False)


    def test_valid_week_with_week_above_16(self):
        """
        valid_week() returns False for a week that is above 16
        """
        player = create_player('Joe Montana', 'QB')    
        pw = PlayerWeek(player=player, week=17, year=2018, points=15)
        self.assertIs(pw.valid_week(), False)


    def test_valid_year_positive(self):
        """
        valid_year() returns True for a year that is valid
        """
        player = create_player('Joe Montana', 'QB')
        lineup = create_lineup(2018, 1, 105)
        pw = PlayerWeek(lineup=lineup, player=player, week=1, year=2018, points=15)
        self.assertIs(pw.valid_year(), True)


    def test_valid_year_is_greater_than_current_year(self):
        """
        valid_year() returns False for a year that is greater than the current year.
        """
        player = create_player('Joe Montana', 'QB')
        year = timezone.now().year+1
        pw = PlayerWeek(player=player, week=1, year=year, points=15)
        self.assertIs(pw.valid_year(), False)


    def test_valid_year_is_less_than_2010(self):
        """
        valid_year() returns False for a year that is less than the 2010.
        """
        player = create_player('Joe Montana', 'QB')
        pw = PlayerWeek(player=player, week=1, year=1999, points=15)
        self.assertIs(pw.valid_year(), False)


    def test_valid_lineup_position_qb_positive(self):
        """
        valid_lineup_position() returns True for a single QB
        """
        qb = create_player('Joe Montana', 'QB')
        lineup = create_lineup(year=timezone.now().year, week=1, points=92)
        lp = create_lineup_position('QB')
        pw = PlayerWeek(lineup=lineup, player=qb, lineup_position=lp, week=1, year=timezone.now().year, points=12.5)
        self.assertIs(pw.valid_lineup_position(), True)


    def test_valid_lineup_position_qb_more_than_1(self):
        """
        valid_lineup_position() returns False for a lineup with a QB already
        """
        qb = create_player('Joe Montana', 'QB')
        qb2 = create_player('Steve Young', 'QB')
        lineup = create_lineup(year=timezone.now().year, week=1, points=92)
        lp = create_lineup_position('QB')
        PlayerWeek.objects.create(lineup=lineup, player=qb, lineup_position=lp, week=1, year=timezone.now().year, points=10)
        pw = PlayerWeek(lineup=lineup, player=qb2, lineup_position=lp, week=1, year=timezone.now().year, points=12.5)
        self.assertIs(pw.valid_lineup_position(), False)


    def test_valid_lineup_position_rb_1(self):
        """
        valid_lineup_position() returns True for a single RB
        """
        rb = create_player('Joe Montana', 'RB')
        lineup = create_lineup(year=timezone.now().year, week=1, points=92)
        lp = create_lineup_position('RB')
        pw = PlayerWeek(lineup=lineup, player=rb, lineup_position=lp, week=1, year=timezone.now().year, points=12.5)
        self.assertIs(pw.valid_lineup_position(), True)


    def test_valid_lineup_position_rb_2(self):
        """
        valid_lineup_position() returns True for a lineup with a RB already
        """
        rb = create_player('Joe Montana', 'RB')
        rb2 = create_player('Steve Young', 'RB')
        lineup = create_lineup(year=timezone.now().year, week=1, points=92)
        lp = create_lineup_position('RB')
        PlayerWeek.objects.create(lineup=lineup, player=rb, lineup_position=lp, week=1, year=timezone.now().year, points=10)
        pw = PlayerWeek(lineup=lineup, player=rb2, lineup_position=lp, week=1, year=timezone.now().year, points=12.5)
        self.assertIs(pw.valid_lineup_position(), True)


    def test_valid_lineup_position_rb_more_than_2(self):
        """
        valid_lineup_position() returns False for a lineup with 2 RBs already
        """
        rb = create_player('Joe Montana', 'RB')
        rb2 = create_player('Steve Young', 'RB')
        rb3 = create_player('Emmitt Smith', 'RB')
        lineup = create_lineup(year=timezone.now().year, week=1, points=92)
        lp = create_lineup_position('RB')
        PlayerWeek.objects.create(lineup=lineup, player=rb, lineup_position=lp, week=1, year=timezone.now().year, points=10)
        PlayerWeek.objects.create(lineup=lineup, player=rb3, lineup_position=lp, week=1, year=timezone.now().year, points=10)
        pw = PlayerWeek(lineup=lineup, player=rb2, lineup_position=lp, week=1, year=timezone.now().year, points=12.5)
        self.assertIs(pw.valid_lineup_position(), False)

