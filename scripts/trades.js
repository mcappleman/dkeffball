$(document).ready(function () {

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