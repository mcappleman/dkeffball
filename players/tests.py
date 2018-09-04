#import datetime

from django.test import TestCase
from django.utils import timezone

from .models import Player, PlayerWeek

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


class PlayerWeekModelTests(TestCase):
    def test_valid_week_positive(self):
        """
        valid_week() returns True for a valid week
        """
        player = create_player('Joe Montana', 'QB')    
        pw = PlayerWeek(player=player, week=1, year=2018, points=15)
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
        pw = PlayerWeek(player=player, week=1, year=2018, points=15)
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

