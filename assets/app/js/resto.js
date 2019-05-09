$(document).ready(function() {

    var mainArea = "web";
    var mainRoute = "resto";
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
                "data": "invoices_invoice_number"
            },
            {
                "targets": 2,
                "data": "invoices_invoice_date"
            },
            {
                "targets": 3,
                "data": "customers_name"
            },
            {
                "targets": 4,
                "data": "invoices_payment_type"
            },
            {
                "targets": 5,
                "data": "invoices_due"
            },
            {
                "targets": 6,
                "data": "invoices_discount"
            },
            {
                "targets": 7,
                "data": "invoice_tax"
            },
            {
                "targets": 8,
                "data": "invoices_is_draft",
                "render": function(data, type, row, meta) {
                    if (parseInt(data) === 1) {
                        return '<span class="label label-danger">Belum disimpan</span>';
                    } else {
                        return '<span class="label label-success">Aktif</span>';
                    }
                }
            },
            {
                "targets": 9,
                "orderable": false,
                "className": "text-center",
                "render": function(data, type, row, meta) {
                    var config = {
                        "route": mainRoute,
                        "id": row.invoices_id,
                        "area": "web"
                    };
                    return appDataTable.action(config);
                }
            },
        ]
    };

    appDataTable.render(renderConfig);

});