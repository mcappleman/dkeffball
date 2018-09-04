from django.contrib import admin

from .models import Player, PlayerWeek

class PlayerWeekAdmin(admin.ModelAdmin):
    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == 'player':
            kwargs["queryset"] = Player.objects.order_by('name')
        return super(PlayerWeekAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

admin.site.register(Player)
admin.site.register(PlayerWeek, PlayerWeekAdmin)
