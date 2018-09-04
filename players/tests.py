from django.test import TestCase

from .models import Player, PlayerWeek

class PlayerModelTests(TestCase):
    def test_validate_position_with_correct_position(self):
        """
        validate_position() return True for a correct position name
        """
        player = Player(name="Jay Feely", position="K")
        self.assertIs(player.validate_position(), True)


    def test_validate_position_with_wrong_position(self):
        """
        validate_position() returns False for a position that is not expected
        """
        player = Player(name="Gary Blauman", position="Not")
        self.assertIs(player.validate_position(), False)


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
        self.assertIs(player.valid_week(), True)


    def test_valid_week_with_week_below_1(self):
        """
        valid_week() returns False for a week that is below 1
        """
        player = create_player('Joe Montana', 'QB')    
        pw = PlayerWeek(player=player, week=0, year=2018, points=15)
        self.assertIs(player.valid_week(), False)


    def test_valid_week_with_week_above_16(self):
        """
        valid_week() returns False for a week that is above 16
        """
        player = create_player('Joe Montana', 'QB')    
        pw = PlayerWeek(player=player, week=17 year=2018, points=15)
        self.assertIs(player.valid_week(), False)

