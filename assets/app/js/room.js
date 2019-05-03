$(document).ready(function() {

    var mainArea = "web";
    var mainRoute = "room";
    var renderConfig = {
        "table": "#table",
        "route": mainRoute,
        "request": "POST",
        "area": mainArea,
        "column": [{
                "targets": 0,
                "orderable": false,
                "className": "text-center",
                "render": function(data, type, row, meta) {
                    return meta.row + meta.settings._iDisplayStart + 1;
                }
            },
            {
                "targets": 1,
                "data": "rooms_number"
            },
            {
                "targets": 2,
                "data": "categories_room_name"
            },
            {
                "targets": 3,
                "data": "status_room_name"
            },
            {
                "targets": 4,
                "data": "rooms_capacity"
            },
            {
                "targets": 5,
                "data": "rooms_occupant"
            },
            {
                "targets": 6,
                "orderable": false,
                "className": "text-center",
                "render": function(data, type, row, meta) {
                    var config = {
                        "route": mainRoute,
                        "id": row.rooms_id,
                        "area": "web"
                    };
                    return appDataTable.action(config);
                }
            },
        ]
    };

    appDataTable.render(renderConfig);

});