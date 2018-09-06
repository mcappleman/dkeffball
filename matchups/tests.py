from django.test import TestCase
from django.utils import timezone

from .models import Matchup
from teams.models import Lineup, Team

def create_lineup(year, week, points):
    """
    Create Lineup for test cases
    """
    team = Team.objects.create(name='Test', wins=1, losses=1, ties=1)
    return Lineup.objects.create(team=team, week=week, year=year, points=points)


class MatchupModelTests(TestCase):
    def test_valid_lineups_positive(self):
        """
        valid_lineups() returns True if lineups are the same week
        """
        l1 = create_lineup(timezone.now().year, 1, 101.1)
        l2 = create_lineup(timezone.now().year, 1, 102)
        matchup = Matchup(winner=l2, loser=l1)
        self.assertIs(matchup.valid_lineups(), True)


    def test_valid_lineups_different_year(self):
        """
        valid_lineups() returns False if lineups are different years
        """
        l1 = create_lineup(timezone.now().year-1, 1, 101.1)
        l2 = create_lineup(timezone.now().year, 1, 102)
        matchup = Matchup(winner=l2, loser=l1)
        self.assertIs(matchup.valid_lineups(), False)


    def test_valid_lineups_different_week(self):
        """
        valid_lineups() returns False if lineups are different weeks
        """
        l1 = create_lineup(timezone.now().year, 3, 101.1)
        l2 = create_lineup(timezone.now().year, 1, 102)
        matchup = Matchup(winner=l2, loser=l1)
        self.assertIs(matchup.valid_lineups(), False)


    def test_valid_lineups_different_week_and_year(self):
        """
        valid_lineups() returns False if lineups are differnt weeks and years
        """
        l1 = create_lineup(timezone.now().year-1, 3, 101.1)
        l2 = create_lineup(timezone.now().year, 1, 102)
        matchup = Matchup(winner=l2, loser=l1)
        self.assertIs(matchup.valid_lineups(), False)


    def test_valid_lineups_swap_winner_loser(self):
        """
        valid_lineups() returns True and swaps winner and loser if loser has more points than the winner
        """
        l1 = create_lineup(timezone.now().year, 1, 101.1)
        l2 = create_lineup(timezone.now().year, 1, 102)
        matchup = Matchup(winner=l1, loser=l2)
        self.assertIs(matchup.valid_lineups(), True)
        self.assertIs(matchup.winner.points, l2.points)
        self.assertIs(matchup.loser.points, l1.points)


    def test_assign_wins_winner(self):
        """
        assign_wins() adds a win to the winner and adds a loss to the loser
        """
        l1 = create_lineup(timezone.now().year, 1, 101.1)
        l2 = create_lineup(timezone.now().year, 1, 102)
        matchup = Matchup(winner=l2, loser=l1)
        matchup.assign_wins()
        self.assertIs(matchup.winner.team.wins, 2)
        self.assertIs(matchup.loser.team.losses, 2)


    def test_assign_wins_tie(self):
        """
        assign_wins() adds a win to the winner and adds a loss to the loser
        """
        l1 = create_lineup(timezone.now().year, 1, 102)
        l2 = create_lineup(timezone.now().year, 1, 102)
        matchup = Matchup(winner=l2, loser=l1)
        matchup.assign_wins()
        self.assertIs(matchup.winner.team.ties, 2)
        self.assertIs(matchup.loser.team.ties, 2)

