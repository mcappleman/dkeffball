from django.contrib import admin
from django.utils import timezone

from .models import Team, Lineup, LineupPosition
from players.models import Player, PlayerWeek


class PlayerWeekInline(admin.TabularInline):
    model = PlayerWeek


class LineupAdmin(admin.ModelAdmin):
    inlines = [PlayerWeekInline]


admin.site.register(Team)
admin.site.register(LineupPosition)
admin.site.register(Lineup, LineupAdmin)
