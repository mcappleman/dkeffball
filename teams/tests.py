from django.test import TestCase
from django.utils import timezone

from .models import Team, Lineup, LineupPosition

class TeamModelTests(TestCase):
    def test_valid_wins_positive(self):
        """
        valid_wins() returns True for a value greater than 0
        """
        team = Team(name='Matt', wins=1, losses=1, ties=1)
        self.assertIs(team.valid_wins(), True)


    def test_valid_wins_is_zero(self):
        """
        valid_wins() returns True for 0
        """
        team = Team(name='Matt', wins=0, losses=1, ties=1)
        self.assertIs(team.valid_wins(), True)

        
    def test_valid_wins_less_than_zero(self):
        """
        valid_wins() returns False for a value less than 0
        """
        team = Team(name='Matt', wins=-1, losses=1, ties=1)
        self.assertIs(team.valid_wins(), False)


    def test_valid_losses_positive(self):
        """
        valid_losses() returns True for a value greater than 0
        """
        team = Team(name='Matt', wins=1, losses=1, ties=1)
        self.assertIs(team.valid_losses(), True)


    def test_valid_losses_is_zero(self):
        """
        valid_losses() returns True for 0
        """
        team = Team(name='Matt', wins=0, losses=0, ties=1)
        self.assertIs(team.valid_losses(), True)

        
    def test_valid_losses_less_than_zero(self):
        """
        valid_losses() returns False for a value less than 0
        """
        team = Team(name='Matt', wins=-1, losses=-1, ties=1)
        self.assertIs(team.valid_losses(), False)


    def test_valid_ties_positive(self):
        """
        valid_ties() returns True for a value greater than 0
        """
        team = Team(name='Matt', wins=1, losses=1, ties=1)
        self.assertIs(team.valid_ties(), True)


    def test_valid_ties_is_zero(self):
        """
        valid_ties() returns True for 0
        """
        team = Team(name='Matt', wins=0, losses=1, ties=0)
        self.assertIs(team.valid_ties(), True)

        
    def test_valid_ties_less_than_zero(self):
        """
        valid_ties() returns False for a value less than 0
        """
        team = Team(name='Matt', wins=-1, losses=1, ties=-1)
        self.assertIs(team.valid_ties(), False)


def create_team(name, wins, losses, ties):
    """
    Create team for test cases
    """
    return Team.objects.create(name=name, wins=wins, losses=losses, ties=ties)


class LineupModelTests(TestCase):
    def test_valid_week_positive(self):
        """
        valid_week() returns True for a value between 1 and 16
        """
        team = create_team('Matt', 1, 1, 1)
        lineup = Lineup(team=team, year=timezone.now().year, week=1, points=100.2)
        self.assertIs(lineup.valid_week(), True)


    def test_valid_week_zero(self):
        """
        valid_week() returns False for 0
        """
        team = create_team('Matt', 1, 1, 1)
        lineup = Lineup(team=team, year=timezone.now().year, week=0, points=100.2)
        self.assertIs(lineup.valid_week(), False)


    def test_valid_week_greater_than_16(self):
        """
        valid_week() returns False for a value greater than 16
        """
        team = create_team('Matt', 1, 1, 1)
        lineup = Lineup(team=team, year=timezone.now().year, week=17, points=100.2)
        self.assertIs(lineup.valid_week(), False)


    def test_valid_year_current_year(self):
        """
        valid_year() returns True for the current year
        """
        team = create_team('Matt', 1, 1, 1)
        lineup = Lineup(team=team, year=timezone.now().year, week=1, points=100.2)
        self.assertIs(lineup.valid_year(), True)


    def test_valid_year_last_year(self):
        """
        valid_year() returns True for last year
        """
        team = create_team('Matt', 1, 1, 1)
        lineup = Lineup(team=team, year=timezone.now().year-1, week=1, points=100.2)
        self.assertIs(lineup.valid_year(), True)


    def test_valid_year_before_2010(self):
        """
        valid_year() returns False for a year less than 2010
        """
        team = create_team('Matt', 1, 1, 1)
        lineup = Lineup(team=team, year=2009, week=1, points=100.2)
        self.assertIs(lineup.valid_year(), False)


    def test_valid_year_future_year(self):
        """
        valid_year() returns False for a year that is in the future
        """
        team = create_team('Matt', 1, 1, 1)
        lineup = Lineup(team=team, year=timezone.now().year+1, week=1, points=100.2)
        self.assertIs(lineup.valid_year(), False)


class LineupPositionModelTests(TestCase):
    def test_valid_name_positive(self):
        """
        valid_name() return True for a value that is acceptable
        """
        position = LineupPosition(name='QB')
        self.assertIs(position.valid_name(), True)


    def test_valid_name_negative(self):
        """
        valid_name() returns False for a position that is not actually a position
        """
        position = LineupPosition(name='Not')
        self.assertIs(position.valid_name(), False)

