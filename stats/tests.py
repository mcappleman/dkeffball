from django.test import TestCase

from .models import Lineup, Player, PlayerWeek, Team

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
