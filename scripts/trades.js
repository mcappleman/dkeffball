$(document).ready(function () {
    strikeExpiredTradeAssets(2025);

    var table = $('#activeTradeTable').DataTable({
        order: [[0, "desc"]]
    });
    
    $('#activeTradeTable tfoot th').each( function (i) {
        var title = $(this).text();
        var htmlString = '<input type="text" class="form-control column-search" placeholder="'+trades.headers[i].title+'" />';
        $(this).html( htmlString );

    } );
 
    // Apply the search
    table.columns().every( function () {
        var that = this;
 
        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );

    $('#activeTradeTable_filter').addClass('hidden');

});

function strikeExpiredTradeAssets(cutoffYear) {
    $('#activeTradeTable tbody tr').each(function () {
        var $row = $(this);
        [2, 4].forEach(function (columnIndex) {
            var $cell = $row.children('td').eq(columnIndex);
            if (!$cell.length) {
                return;
            }

            var assets = $cell.html().split(/<br\s*\/?>/i);
            var updatedAssets = assets.map(function (asset) {
                var trimmedAsset = asset.trim();
                if (!trimmedAsset || /<s[\s>]/i.test(trimmedAsset)) {
                    return asset;
                }

                var years = Array.from(trimmedAsset.matchAll(/\((\d{4})\)/g), function (match) {
                    return parseInt(match[1], 10);
                });

                if (years.length > 0 && years.every(function (year) { return year <= cutoffYear; })) {
                    return '<s>' + trimmedAsset + '</s>';
                }

                return asset;
            });

            $cell.html(updatedAssets.join('<br />'));
        });
    });
}

var trades = {
    "headers": [
        { "title": "Year" },
        { "title": "Team 1" },
        { "title": "Receives (1)" },
        { "title": "Team 2" },
        { "title": "Receives (2)" },
    ],
    "active": [],
    "past": []
};