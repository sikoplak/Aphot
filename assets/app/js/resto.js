var reservation = {

    "init": function () {   
        reservation.tableMenu();
        if($(".menu_item").length === 0){
            $("#table-order tbody").html("<tr class='text-center'><td colspan='6'>-- Tidak ada Data--</td></tr>");
        }
        $(".credit, .cash").hide();
        reservation.Calculate();

        if($("#payment_type").val()){
            if (parseInt($("#payment_type").val()) === 0) {
                $(".cash").show();
                $(".credit").hide();
            } 
            if (parseInt($("#payment_type").val()) === 1) {
                $(".cash").hide();
                $(".credit").show();
            }
        }
      

        $("body").on("click", ".menu-add", function(e){
            e.preventDefault();
            if($(".menu_item").length === 0) $("#table-order tbody").empty();

            let element = $(this).attr("data-element");
            let el = element.split("|");
            let id = el[0];
            let name = el[1];
            let price = el[2];

            if($("#row"+id).length === 1){
                swal("Sudah Terdaftar", "Menu restoran '"+name+"' sudah ada !", "error");
            }else{
                let html = "<tr id='row"+id+"' data-id='"+id+"' class='menu_item'>";
                html += "<td class='num'></td>";
                html += "<td><input type='hidden' name='menu_id[]' value='"+id+"'/>"+name+"</td>";
                html += "<td><input type='hidden' class='price' name='price[]' data-id='"+id+"' value='"+price+"'/>"+price+"</td>";
                html += "<td><input type='number' class='form-control qty' data-id='"+id+"' min='1' value='1' name='qty[]' /></td>";
                html += "<td><input type='number' class='form-control total' data-id='"+id+"' value='"+price+"' name='total[]' readonly='readonly' /></td>";
                html += "<td><a href='javascript:void(0);' data-id='"+id+"' class='btn btn-sm btn-danger btn-delete-menu'><i class='fa fa-trash'></i></a></td>";
                html += "</tr>"
                $("#table-order tbody").append(html);
                $("#modal-menu").modal("hide");
                reservation.Calculate();
            }

            $(".num").each(function(i){
                $(this).text(parseInt(i+1));  
            });

            return false;
        });

        $("body").on("click", ".btn-delete-menu", function(e){
            e.preventDefault();
            let id = $(this).attr("data-id");
            $("#row"+id).remove();
            if($(".menu_item").length === 0){
                $("#table-order tbody").html("<tr class='text-center'><td colspan='6'>-- Tidak ada Data--</td></tr>");
            }
            $(".num").each(function(i){
                $(this).text(parseInt(i+1));  
            });
            reservation.Calculate();
            return false;
        });
        
        $("body").on("keyup change", ".qty", function() {
            let id = $(this).attr("data-id"); 
            let qty = $(this).val() || 0;
            let price =  $(".price[data-id='" + id + "']").val() || 0;
            let total = parseFloat(qty) * parseFloat(price);
            $(".total[data-id='" + id + "']").val(total || 0);
            reservation.Calculate();
        });

        $("#form-submit").submit(function(e){
            e.preventDefault();
            if($(".total").length === 0){
                swal("Item Kosong !", "Item transaksi kosong !!", "error");
            }else{
                $("#myModal").modal("show");
            }
            return false;
        });

        $("#payment_type").change(function(e) {
            e.preventDefault();
            let type = $(this).val();
            if (parseInt(type) === 0) {
                $(".cash").show();
                $(".credit").hide();
            } else {
                $(".cash").hide();
                $(".credit").show();
            }
            return false;
        });

        $("body").on("click", "#btn-save-checkout", function(e) {
            e.preventDefault();
            let formCheckOut = $("#form-checkout");
            let grandTotal = $(".grand-total").val();
            let type = $("#payment_type").val();
            let cash = $("#input-cash").val();
            let bank = $("#input-bank").val();
            let credit_number = $("#input-credit-number").val();
            let validation = false;
            if (parseInt(type) === -1) {
                swal("Pilih Jenis Pembayaran", "Silahkan pilih jenis pembayaran !", "error");
            } else {
                if (parseInt(type) === 0) {
                    if (!cash) {
                        swal("Input Kosong", "Silahkan input uang tunai !", "error");
                    } else if (parseFloat(cash) < parseFloat(grandTotal)) {
                        swal("Input Salah", "Uang tunai harus lebih besar sama dengan " + grandTotal, "error");
                    } else {
                        validation = true;
                    }
                } else {
                    if (!bank) {
                        swal("Input Kosong", "Silahkan input nama bank !", "error");
                    } else if (!credit_number) {
                        swal("Input Kosong", "Silahkan input nomor kartu kredit !", "error");
                    } else {
                        validation = true;
                    }
                }
            }
    
            if (validation === true) {
                swal({
                    title: "Konfirmasi Check Out",
                    text: "Apakah anda yakin ?",
                    type: "warning",
                    showCancelButton: true,
                    closeOnConfirm: false,
                    confirmButtonText: "Ya",
                    cancelButtonText: "Tidak",
                    confirmButtonColor: "#ec6c62"
                }, function() {
                    $("._payment_type").val(type);
                    $("._bank_name").val(bank);
                    $("._credit_number").val(credit_number);
                    $("#form-submit").unbind('submit').submit();
                });
            }
    
            return false;
        });
    
        $("body").on("keyup change", "#input-cash", function() {
            let grandTotal = $(".grand-total").val();
            let cash = $("#input-cash").val();
            let change = parseFloat(cash) - parseFloat(grandTotal);
            $("#input-change").val(change <= 0 ? 0 : change || 0);
            $("._tendered").val(cash);
            $("._change").val(change <= 0 ? 0 : change || 0);
        });

        $("#btn-invoice-print").click(function(e) {
            e.preventDefault();
            $("#modal-print").modal("show");
            return false;
        });
    
        $("#btn-print").click(function(e) {
            e.preventDefault();
            let url = $(this).attr("data-url");
            let W = window.open(url);
            W.window.print();
            return false;
        });
    
    

    },

    "tableMenu": function () {
        if ($("#table-menu").length) {
            let mainArea = "web";
            let mainRoute = "menu";
            let renderConfig = {
                "table": "#table-menu",
                "route": mainRoute,
                "request": "POST",
                "area": mainArea,
                "column": [
                    {
                        "targets": 0,
                        "data": "categories_food_name",
                        "render": function(data, type, row, meta) {
                            let image = !row.foods_image ? "assets/dist/img/no-image.png" : row.foods_image;
                            let json = jsonToString(row);
                            let html = "<a href='javascript:void(0);' data-id='"+row.foods_id+"'><img src='"+BASE_URL+"/"+image+"' class='img-thumbnail'></a>";
                            html += '<input type="hidden" class="menu_detail" id="food'+row.foods_id+'" value="'+json+'">';
                            return html
                        }
                    },
                    {
                        "targets": 1,
                        "orderable": false,
                        "className": "text-left",
                        "render": function(data, type, row, meta) {
                            let html = "<ul>";
                            html += "<li>Kategori  : "+row.categories_food_name+"</li>";
                            html += "<li>Nama Menu : "+row.foods_name+"</li>";
                            html += "<li>Harga : "+row.foods_cost+"</li>";
                            html += "<li>Deskripsi : "+row.foods_description+"</li>";
                            html += "</ul>";
                            return html;
                        }
                    },
                    {
                        "targets": 2,
                        "orderable": false,
                        "render": function(data, type, row, meta) {
                            let element = new Array();
                            element[0] = row.foods_id;
                            element[1] = row.foods_name;
                            element[2]= row.foods_cost;
                            let el = element.join("|");
                           return "<a href='javascript:void(0);' data-element='"+el+"'  class='menu-add btn btn-sm btn-info' ><i class='fa fa-check'></i></a>";
                        }
                    },
                ],
            };
            appDataTable.render(renderConfig);
            $("#table-menu_length, #table-menu_info, #table-menu_paginate").hide();
        }
    },

    "Calculate": function(){

        var subtotal = 0;
        var total_disc = 0;
        var total_tax = 0;

        $(".menu_item").each(function(){
            let id = $(this).attr("data-id");
            let total = $(".total[data-id='" + id + "']").val();
            subtotal = parseFloat(subtotal) + parseFloat(total);
        });

        $(".cost-tax").each(function() {
            let id = $(this).attr("data-tax-id");
            let cost = $(this).attr("data-cost");
            let tax = (parseFloat(cost) * parseFloat(subtotal)) / 100;
            total_tax = total_tax + tax;
            $(this).text(tax);
            $(".cost_tax[data-tax-id='" + id + "']").val(tax || 0);
        });

        $(".cost-disc").each(function() {
            let id = $(this).attr("data-discount-id");
            let cost = $(this).attr("data-cost");
            let disc = (parseFloat(cost) * parseFloat(subtotal)) / 100;
            total_disc = total_disc + disc;
            $(this).text(disc);
            $(".cost_discount[data-discount-id='" + id + "']").val(disc || 0);
        });

        
        $(".subtotal").text(subtotal);
        $(".total-tax-txt").text(total_tax);
        $(".total-discount-txt").text(total_disc);
        $("#discount").val(total_disc);
        $("#tax").val(total_tax);
        $("._discount").val(total_disc);
        $("._tax").val(total_tax);

        var grandTotal = (parseFloat(subtotal) + parseFloat(total_tax)) - parseFloat(total_disc);
        $(".grand-total-txt").text(grandTotal);
        $(".grand-total").val(grandTotal);
        $("#input-cash").attr("min", grandTotal);

    }

};

var dataTableMeja = function () {
    var mainArea = "web";
    var mainRoute = "table";
    var renderConfig = {
        "table": "#table-meja",
        "route": mainRoute,
        "request": "POST",
        "area": mainArea,
        "column": [{
                "targets": 0,
                "orderable": false,
                "className": "text-center",
                "render": function (data, type, row, meta) {
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
                "render": function (data, type, row, meta) {
                    return parseInt(data) === 1 ? "Ya" : "Tidak";
                }
            },
            {
                "targets": 3,
                "data": "tables_is_booked",
                "render": function (data, type, row, meta) {
                    return parseInt(data) === 1 ? "Ya" : "Tidak";
                }
            },
            {
                "targets": 4,
                "orderable": false,
                "className": "text-center",
                "render": function (data, type, row, meta) {
                    let status = parseInt(row.tables_is_available) === 0 || parseInt(row.tables_is_booked) === 1 ? false : true;
                    let disabled = status === false ? "disabled" : "";
                    let url = status === true ? BASE_URL + "web/resto/reserved/" + row.tables_id : "javascript:void(0);";
                    return "<a href='" + url + "' class='btn btn-success btn-sm' " + disabled + "><i class='fa fa-check'></i></a>"
                }
            },
        ],
        "rowCallback": function (row, data) {
            let status = parseInt(data.tables_is_available) === 0 || parseInt(data.tables_is_booked) === 1 ? false : true;
            if (status === false) $(row).addClass("danger");
        }
    };

    appDataTable.render(renderConfig);
}

$(document).ready(function () {

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
                "render": function (data, type, row, meta) {
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
                "data": "customers_name",
                "render": function (data, type, row, meta) {
                    return data ? data : "-";
                }
            },
            {
                "targets": 4,
                "data": "invoices_payment_type",
                "render": function (data, type, row, meta) {
                    if(!data){
                        return "-";
                    }else{
                        if (parseInt(data) === 1) {
                            return '<span class="label label-warning">Kredit</span>';
                        } else {
                            return '<span class="label label-success">Tunai</span>';
                        }
                    }
                }
            },
            {
                "targets": 5,
                "data": "subtotal",
                "render": function (data, type, row, meta) {
                    return data ? data : 0;
                }
            },
            {
                "targets": 6,
                "data": "invoices_discount",
                "render": function (data, type, row, meta) {
                    return data ? data : 0;
                }
            },
            {
                "targets": 7,
                "data": "invoices_tax",
                "render": function (data, type, row, meta) {
                    return data ? data : 0;
                }
            },
            {
                "targets": 8,
                "data": "invoices_due",
                "render": function (data, type, row, meta) {
                    return data ? data : 0;
                }
            },
            {       
                "targets": 9,
                "data": "invoices_is_draft",
                "render": function (data, type, row, meta) {
                    if (parseInt(data) === 1) {
                        return '<span class="label label-danger">Belum disimpan</span>';
                    } else {
                        return '<span class="label label-success">Aktif</span>';
                    }
                }
            },
            {
                "targets": 10,
                "orderable": false,
                "className": "text-center",
                "render": function (data, type, row, meta) {
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

    $(".btn-create-data").click(function (e) {
        e.preventDefault();
        $("#modal-check-in").modal("show");
        return false;
    });

    $("#btn-add-customer").click(function (e) {
        e.preventDefault();
        $("#modal-customer").modal("show");
        return false;
    });

    $("#btn-add-menu").click(function(e){
        e.preventDefault();
        $("#modal-menu").modal("show");
        return false;
    });

    if ($("#table-meja").length) {
        dataTableMeja();
       
    }

    if ($("#form-submit").length) {
        reservation.init();
    }

    if ($("#customer_id").length) {
        $("#customer_id").select2({
            ajax: {
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                    'Authorization': API_TOKEN,
                },
                url: BASE_URL + "api/customer/customer_select2",
                type: "POST",
                dataType: 'json',
                delay: 250,
                data: function (params) {
                    var postData = {};
                    postData["q"] = params.term;
                    postData[CSRF_NAME] = CSRF_VALUE;
                    return postData;
                },
                processResults: function (data) {
                    return {
                        results: data
                    };
                },
                cache: true,
            }
        });
    }


});