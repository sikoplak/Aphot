$(document).ready(function() {

    var mainArea = "web";
    var mainRoute = "audit";
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
                "data": "users_username"
            },
            {
                "targets": 2,
                "data": "audits_event"
            },
            {
                "targets": 3,
                "data": "audits_url"
            },
            {
                "targets": 4,
                "data": "audits_ip_address"
            },
            {
                "targets": 5,
                "data": "audits_user_agent"
            },
            {
                "targets": 6,
                "data": "audits_date_created"
            },
        ]
    };

    appDataTable.render(renderConfig);

});