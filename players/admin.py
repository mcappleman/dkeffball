from django.contrib import admin

from .models import Player, PlayerWeek


class PlayerAdmin(admin.ModelAdmin):
    list_display = ('name', 'position')
    list_filter = ['position']
    search_fields = ['name']


class PlayerWeekAdmin(admin.ModelAdmin):
    list_display = ('player_name', 'player_position', 'week', 'year')
    list_filter = ['player__position', 'week', 'year']
    search_fields = ['player__name', 'week', 'year']

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == 'player':
            kwargs["queryset"] = Player.objects.order_by('name')
        return super(PlayerWeekAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)


    def player_name(self, obj):
        return obj.player.name


    def player_position(self, obj):
        return obj.player.position


    player_name.admin_order_field = 'player__name'

admin.site.register(Player, PlayerAdmin)
admin.site.register(PlayerWeek, PlayerWeekAdmin)
