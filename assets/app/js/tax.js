$(document).ready(function() {

    var mainArea = "web";
    var mainRoute = "tax";
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
                "data": "taxes_name"
            },
            {
                "targets": 2,
                "data": "taxes_cost"
            },
            {
                "targets": 3,
                "data": "taxes_type",
                "render": function(data, type, row, meta) {
                    return parseInt(data) === 0 ? "Penginapan" : "Restoran";
                }
            },
            {
                "targets": 4,
                "data": "taxes_description"
            },
            {
                "targets": 5,
                "data": "taxes_active",
                "render": function(data, type, row, meta) {
                    return labelStatus(data);
                }
            },
            {
                "targets": 6,
                "orderable": false,
                "className": "text-center",
                "render": function(data, type, row, meta) {
                    var config = {
                        "route": mainRoute,
                        "id": row.taxes_id,
                        "area": "web"
                    };
                    return appDataTable.action(config);
                }
            },
        ]
    };

    appDataTable.render(renderConfig);

});