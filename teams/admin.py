from django.contrib import admin
from django.utils import timezone
from django.db.models import Q

from .models import Team, Lineup, LineupPosition
from players.models import Player, PlayerWeek


class PlayerWeekInline(admin.TabularInline):
    model = PlayerWeek
    extra = 1

    fields = ('player', 'lineup_position', 'points')

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == 'player':
            kwargs["queryset"] = Player.objects.order_by('position', 'name')

        return super().formfield_for_foreignkey(db_field, request, **kwargs)


class LineupAdmin(admin.ModelAdmin):
    list_display = ('team_name', 'points', 'week', 'year')
    list_filter = ['team__name', 'week', 'year']
    search_fields = ['team__name']

    inlines = [PlayerWeekInline]

    def team_name(self, obj):
        return obj.team.name


    team_name.admin_order_field = 'team__name'


admin.site.register(Team)
admin.site.register(LineupPosition)
admin.site.register(Lineup, LineupAdmin)
