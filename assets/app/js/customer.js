$(document).ready(function() {

    var mainArea = "web";
    var mainRoute = "customer";
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
                "data": "customers_identity_type",
                "render": function(data, type, row, meta) {
                    return data ? data : "-";
                }
            },
            {
                "targets": 2,
                "data": "customers_identity_number",
                "render": function(data, type, row, meta) {
                    return data ? data : "-";
                }
            },
            {
                "targets": 3,
                "data": "customers_name",
                "render": function(data, type, row, meta) {
                    return data ? data : "-";
                }
            },
            {
                "targets": 4,
                "data": "customers_phone",
                "render": function(data, type, row, meta) {
                    return data ? data : "-";
                }
            },
            {
                "targets": 5,
                "data": "customers_email",
                "render": function(data, type, row, meta) {
                    return data ? data : "-";
                }
            },
            {
                "targets": 6,
                "data": "customers_address",
                "render": function(data, type, row, meta) {
                    return data ? data : "-";
                }
            },
            {
                "targets": 7,
                "orderable": false,
                "className": "text-center",
                "render": function(data, type, row, meta) {
                    var config = {
                        "route": mainRoute,
                        "id": row.customers_id,
                        "area": "web"
                    };
                    return appDataTable.action(config);
                }
            },
        ]
    };

    appDataTable.render(renderConfig);

});