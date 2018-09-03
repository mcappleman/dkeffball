from django.contrib import admin

from .models import Lineup, Matchup, Player, PlayerWeek, Team

admin.site.register(Lineup)
admin.site.register(Matchup)
admin.site.register(Player)
admin.site.register(PlayerWeek)
admin.site.register(Team)

