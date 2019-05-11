$(document).ready(function() {

    var mainArea = "web";
    var mainRoute = "table";
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
                "data": "tables_number"
            },
            {
                "targets": 2,
                "data": "tables_is_available",
                "render": function(data, type, row, meta) {
                    return parseInt(data) === 1 ? "Ya" : "Tidak";
                }
            },
            {
                "targets": 3,
                "data": "tables_is_booked",
                "render": function(data, type, row, meta) {
                    return parseInt(data) === 1 ? "Ya" : "Tidak";
                }
            },
            {
                "targets": 4,
                "orderable": false,
                "className": "text-center",
                "render": function(data, type, row, meta) {
                    var config = {
                        "route": mainRoute,
                        "id": row.tables_id,
                        "area": "web"
                    };
                    return appDataTable.action(config);
                }
            },
        ]
    };

    appDataTable.render(renderConfig);
});