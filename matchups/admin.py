from django.contrib import admin

from .models import Matchup
from teams.models import Lineup

class MatchupAdmin(admin.ModelAdmin):
    list_display = ('winner_year', 'winner_week', 'winner_name', 'loser_name')
    list_filter = ['winner__team__name', 'loser__team__name', 'winner__year', 'winner__week']
    search_fields = ['winner__team__name', 'loser__team__name']

    def winner_name(self, obj):
        return obj.winner.team.name


    def loser_name(self, obj):
        return obj.loser.team.name


    def winner_week(self, obj):
        return obj.winner.week


    def winner_year(self, obj):
        return obj.winner.year


    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == 'winner' or db_field.name == 'loser':
            kwargs["queryset"] = Lineup.objects.order_by('year', 'week', 'team__name')

        return super().formfield_for_foreignkey(db_field, request, **kwargs)


admin.site.register(Matchup, MatchupAdmin)
