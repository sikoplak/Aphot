$(document).ready(function() {

    var mainArea = "web";
    var mainRoute = "menu";
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
                "data": "categories_food_name"
            },
            {
                "targets": 2,
                "data": "foods_name"
            },
            {
                "targets": 3,
                "data": "foods_cost"
            },
            {
                "targets": 4,
                "data": "foods_description"
            },
            {
                "targets": 5,
                "orderable": false,
                "className": "text-center",
                "render": function(data, type, row, meta) {
                    var config = {
                        "route": mainRoute,
                        "id": row.foods_id,
                        "area": "web"
                    };
                    return appDataTable.action(config);
                }
            },
        ]
    };

    appDataTable.render(renderConfig);

});