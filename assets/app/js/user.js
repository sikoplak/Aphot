$(document).ready(function() {

    var mainArea = "web";
    var mainRoute = "user";
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
                "data": "users_email"
            },
            {
                "targets": 3,
                "data": "users_phone"
            },
            {
                "targets": 4,
                "data": "users_active",
                "render": function(data, type, row, meta) {
                    return labelStatus(data);
                }
            },
            {
                "targets": 5,
                "orderable": false,
                "className": "text-center",
                "render": function(data, type, row, meta) {
                    var option = {
                        "route": mainRoute,
                        "id": row.users_id,
                        "area": "web"
                    };

                    var edit = "<a href='" + BASE_URL + "" + option.area + "/" + option.route + "/edit/" + option.id + "' class='btn btn-sm btn-warning btn-edit'><i class='fa fa-edit'></i></a>";
                    var detail = "<a href='" + BASE_URL + "" + option.area + "/" + option.route + "/show/" + option.id + "' class='btn btn-sm btn-success btn-detail'><i class='fa fa-search'></i></a>";
                    var disabled = "<a href='" + BASE_URL + "api/" + option.route + "/delete' data-id='" + option.id + "' data-status='0'  class='btn btn-sm btn-danger btn-activated'><i class='fa fa-user-times'></i></a>";
                    var enabled = "<a href='" + BASE_URL + "api/" + option.route + "/delete' data-id='" + option.id + "'  data-status='1' class='btn btn-sm btn-info btn-activated'><i class='fa fa-check'></i></a>";

                    if (parseInt(USER_CAN_VIEW) == 0) {
                        detail = "";
                    }
            
                    if (parseInt(USER_CAN_UPDATE) == 0) {
                        edit = "";
                    }

                    if (parseInt(USER_CAN_DELETE) == 0) {
                        disabled = "";
                        enabled = "";
                    }
                    
                    if(parseInt(row.users_active) === 1){
                        return edit + " " + detail + " " + disabled;
                    }else{
                        return edit + " " + detail + " " + enabled;
                    }
            
                    
                  
                }
            },
        ]
    };

    appDataTable.render(renderConfig);

    $("body").on("click", ".btn-activated", function(e) {
        e.preventDefault();
        var targetUrl = $(this).attr("href");
        var id = $(this).attr("data-id");
        var status = parseInt($(this).attr("data-status"));
        var message = parseInt(status) === 0 ? 'Apakan anda yakin akan menonaktifkan pengguna ini ?' : 'Apakan anda yakin akan mengaktifkan pengguna ini ?';
        var notif = parseInt(status) === 0 ? 'Pengguna ini berhasil di nonaktifkan !' : 'Pengguna ini berhasil di aktifkan !';
        swal({
            title: "Konfirmasi Aktifasi Pengguna",
            text: message,
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#f8b32d",
            confirmButtonText: "Ya",
            cancelButtonText: "Tidak",
            closeOnConfirm: false,
            closeOnCancel: true
        }, function(isConfirm) {
            if (isConfirm) {
                var postData = {};
                headerRequest();
                postData["id"] = id;
                postData[CSRF_NAME] = CSRF_VALUE;
                $.post(targetUrl, postData, function(result) {
                    if (result) {
                        if (result) {
                            swal("Berhasil !", notif, "success");
                            var t = $("#table").dataTable();
                            t.fnClearTable();
                        }
                    }
                });
            }
        });
        return false;
    });

    $("body").on("click", ".btn-activated-data", function(e) {
        e.preventDefault();
        var targetUrl = $(this).attr("href");
        var status = parseInt($(this).attr("data-status"));
        var message = parseInt(status) === 0 ? 'Apakan anda yakin akan menonaktifkan pengguna ini ?' : 'Apakan anda yakin akan mengaktifkan pengguna ini ?';
        swal({
            title: "Konfirmasi Aktifasi Pengguna",
            text: message,
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#f8b32d",
            confirmButtonText: "Ya",
            cancelButtonText: "Tidak",
            closeOnConfirm: false,
            closeOnCancel: true
        }, function(isConfirm) {
            if (isConfirm) {
                window.location.href = targetUrl;
            }
        });
        return false;
    });

    if (parseInt(USER_CAN_DELETE) == 0) {
        $(".btn-activated-data").hide();
    }

});