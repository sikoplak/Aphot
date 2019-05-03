$(document).ready(function() {

    var mainArea = "web";
    var mainRoute = "discount";
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
                "data": "discounts_name"
            },
            {
                "targets": 2,
                "data": "discounts_cost"
            },
            {
                "targets": 3,
                "data": "discounts_description"
            },
            {
                "targets": 4,
                "data": "discounts_active",
                "render": function(data, type, row, meta) {
                    return labelStatus(data);
                }
            },
            {
                "targets": 5,
                "orderable": false,
                "className": "text-center",
                "render": function(data, type, row, meta) {
                    var config = {
                        "route": mainRoute,
                        "id": row.discounts_id,
                        "area": "web"
                    };
                    return appDataTable.action(config);
                }
            },
        ]
    };

    appDataTable.render(renderConfig);

});