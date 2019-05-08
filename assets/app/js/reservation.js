var tableCustomer = {

    "init": function() {
        let mainArea = "web";
        let mainRoute = "customer";
        let renderConfig = {
            "table": "#table-customer",
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
                    "data": "customers_name",
                    "render": function(data, type, row, meta) {
                        return data ? data : "-";
                    }
                },
                {
                    "targets": 2,
                    "data": "customers_phone",
                    "render": function(data, type, row, meta) {
                        return data ? data : "-";
                    }
                },
                {
                    "targets": 3,
                    "data": "customers_email",
                    "render": function(data, type, row, meta) {
                        return data ? data : "-";
                    }
                },
                {
                    "targets": 4,
                    "data": "customers_address",
                    "render": function(data, type, row, meta) {
                        return data ? data : "-";
                    }
                },
                {
                    "targets": 5,
                    "orderable": false,
                    "className": "text-center",
                    "render": function(data, type, row, meta) {
                        return "<a href='" + BASE_URL + "web/reservation/checkin_customer/" + row.customers_id + "' class='btn btn-success btn-sm'><i class='fa fa-check'></i></a>"
                    }
                },
            ]
        };
        appDataTable.render(renderConfig);
    },

}

var tableRoom = {

    "init": function(table) {

        if ($(table + " tbody tr").length === 0) {
            this.add(table);
        } else {
            let option = "<option>-- Pilih Kategori Kamar --</option>";
            let categories = $("#categories").val();
            let json = JSON.parse(categories);
            json.forEach(function(row) {
                option += "<option data-price='" + row.categories_room_cost + "' value='" + row.categories_room_id + "'>" + row.categories_room_name + "</option>"
            });
            $(table + " .category_id").each(function() {
                let selected = $(this).attr("data-selected");
                $(this).html(option);
                $(this).val(selected).change();
                tableRoom.GetRooms(this);
            });
            tableRoom.autoNumber(table);
            tableRoom.Calculate(table);
        }


        $("body").on("click", "#btn-add-room", function(e) {
            e.preventDefault();
            tableRoom.add(table);
            return false;
        });

        $("body").on("click", "#btn-remove-room", function(e) {
            e.preventDefault();
            let id = $(this).attr("data-id");
            $(".room-row[data-id='" + id + "']").remove();
            tableRoom.autoNumber(table);
            if ($(table + " .number").length === 0) {
                tableRoom.add(table);
            }
            return false;
        });

        $("body").on("change", ".category_id", function(e) {
            e.preventDefault();
            tableRoom.GetRooms(this);
            tableRoom.Calculate(table);
            return false;
        });

        $("body").on("change", ".room_id", function(e) {
            e.preventDefault();
            let row_id = $(this).attr("data-id");
            let capacity = $('option:selected', this).attr('data-capacity');
            let occupant = $('option:selected', this).attr('data-occupant');
            let room_number = $('option:selected', this).text();
            let room_id = $(this).val();
            let selected = 0;
            $(".room_id").each(function() {
                if ($(this).val() === room_id) {
                    selected++;
                }
            });
            if (parseInt(selected) > 1) {
                swal("Kamar sudah dipilih", "Kamar dengan nomor " + room_number + " sudah dipilih sebelumnya !", "error");
                $(".room-row[data-id='" + row_id + "']").remove();
                tableRoom.autoNumber(table);
                if ($(table + " .number").length === 0) {
                    tableRoom.add(table);
                }
            } else {
                $(".capacity[data-id='" + row_id + "']").val(capacity);
                $(".occupant[data-id='" + row_id + "']").attr("max", capacity);
                $(".occupant[data-id='" + row_id + "']").val(occupant);
                tableRoom.Calculate(table);
            }
            return false;
        });

        $("body").on("keyup change", "#number_of_days", function() {
            let value = $(this).val();
            $(".duration").val(value);
            tableRoom.Calculate(table);
        });



    },

    "checkOut": function(data) {
        $("#myModal").modal("hide");
        swal({
            html: true,
            title: '<small><i class="fa fa-spinner fa-spin"></i>&nbsp;&nbsp;Sedang mengirim data...</small>',
            allowOutsideClick: false,
            allowEscapeKey: false,
            allowEnterKey: false,
            showCancelButton: false,
            showConfirmButton: false,
        });
        headerRequest();
        $.post(BASE_URL + "/api/reservation/checkout", data, function(result) {
            toastShow({
                "title": "Pesan Sukses",
                "message": "Check Out Berhasil !!",
                "mode": "success"
            });
            setTimeout(function() {
                swal.close();
                location.reload();
            }, 1000);
        });
    },

    "add": function(table) {

        let option = "<option>-- Pilih Kategori Ruangan --</option>";
        let categories = $("#categories").val();
        let json = JSON.parse(categories);
        let number_of_days = $("#number_of_days").val() || 0;

        json.forEach(function(row) {
            option += "<option data-price='" + row.categories_room_cost + "' value='" + row.categories_room_id + "'>" + row.categories_room_name + "</option>"
        });

        let html = "";
        html += "<tr class='room-row'>"
        html += "<td class='number'></td>";
        html += "<td><select class='category_id select2' required='required' >" + option + "</select></td>";
        html += "<td><select name='room_id[]' class='room_id select2' required='required'><option>-- Pilih Ruangan --</option></select></td>";
        html += "<td><input name='capacity[]' type='text' class='form-control capacity' value='0' readonly='readonly'></td>";
        html += "<td><input name='occupant[]' type='number' min='1' value='0' class='form-control occupant' required='required'></td>";
        html += "<td><input name='price[]' type='text' class='form-control price' value='0' readonly='readonly'></td>";
        html += "<td><input name='duration[]' type='text' class='form-control duration' value='" + number_of_days + "' readonly='readonly'></td>";
        html += "<td><input name='total[]' type='text' class='form-control total' value='0' readonly='readonly'></td>";
        html += '<td><a href="javascript:void(0);" class="btn btn-sm btn-danger delete-room" id="btn-remove-room"><i class="fa fa-trash"></i></a></td>';
        html += "</tr>"
        $(table + " tbody").append(html);
        $(table + " .select2").select2();
        tableRoom.autoNumber(table);
        tableRoom.Calculate(table);
    },

    "autoNumber": function(table) {
        $(table + " .number").each(function(i) {
            var num = parseInt(i + 1);
            $(this).text(num);
            $(this).attr("id", num);
        });
        let action = [
            ".room-row",
            ".delete-room",
            ".category_id",
            ".room_id",
            ".occupant",
            ".capacity",
            ".price",
            ".duration",
            ".total"
        ];
        action.forEach(function(row) {
            $(table + " " + row).each(function(i) {
                var num = parseInt(i + 1);
                $(this).attr("data-id", num);
            });
        })
    },

    "GetRooms": function(elem) {
        let id = $(elem).val();
        let row_id = $(elem).attr("data-id");
        let price = $('option:selected', elem).attr('data-price');
        let id_selected = $(".room_id[data-id='" + row_id + "']").attr("data-selected");
        let number_selected = $(".room_id[data-id='" + row_id + "']").attr("data-number");
        let capacity_selected = $(".capacity[data-id='" + row_id + "']").val();
        let occupant_selected = $(".occupant[data-id='" + row_id + "']").val();
        let postData = {};
        postData["id"] = id;
        postData[CSRF_NAME] = CSRF_VALUE;
        headerRequest();
        $(".room_id[data-id='" + row_id + "']").val('');
        $(".price[data-id='" + row_id + "']").val(price);
        $.post(BASE_URL + "/api/room/get_category", postData, function(result) {
            let option = "<option>-- Pilih Kamar --</option>";
            if (id_selected && number_selected) {
                option += "<option data-capacity=" + capacity_selected + " data-occupant=" + occupant_selected + " value='" + id_selected + "' selected>" + number_selected + "</option>";
            }
            if (result) {
                result.forEach(function(row) {
                    option += "<option data-capacity=" + row.capacity + " data-occupant=" + row.occupant + " value='" + row.id + "'>" + row.number + "</option>";
                });
            }
            $(".room_id[data-id='" + row_id + "']").html(option).change();
        });
    },

    "Calculate": function(table) {

        var subtotal = 0;
        var total_disc = 0;
        var total_tax = 0;

        $(".room-row").each(function() {
            let row_id = $(this).attr("data-id");
            let _price = $(".price[data-id='" + row_id + "']").val() || 0;
            let _duration = $(".duration[data-id='" + row_id + "']").val() || 0;
            let price = parseFloat(_price);
            let duration = parseFloat(_duration);
            let total = price * duration;
            subtotal = subtotal + total;
            $(".total[data-id='" + row_id + "']").val(total || 0);
        });

        $(".checkbox-other").each(function(){
            if($(this).is(":checked")){
                let cost = $(this).attr("data-cost") || 0;
                subtotal = parseFloat(subtotal) + parseFloat(cost);
            }
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

        var grandTotal = (parseFloat(subtotal) + parseFloat(total_tax)) - parseFloat(total_disc);
        $(".grand-total-txt").text(grandTotal);
        $(".grand-total").val(grandTotal);
        $("#input-cash").attr("min", grandTotal);
    }

};

$(document).ready(function() {

    var mainArea = "web";
    var mainRoute = "reservation";
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
                "data": "invoice_number"
            },
            {
                "targets": 2,
                "data": "invoice_date",
            },
            {
                "targets": 3,
                "data": "name",
                "render": function(data, type, row, meta) {
                    return data ? "<a target='_blank' href='" + BASE_URL + "web/customer/show/" + row.customer_id + "'>" + data + "</a>" : "-";
                }
            },
            {
                "targets": 4,
                "data": "number_of_days",
                "render": function(data, type, row, meta) {
                    return data ? data : "-";
                }
            },
            {
                "targets": 5,
                "data": "due_date",
                "render": function(data, type, row, meta) {
                    return data ? data : "-";
                }
            },
            {
                "targets": 6,
                "data": "check_in_on",
                "render": function(data, type, row, meta) {
                    return data ? '<span class="label label-info">' + data + '</span>' : "-";
                }
            },
            {
                "targets": 7,
                "data": "check_out_on",
                "render": function(data, type, row, meta) {
                    return data ? '<span class="label label-info">' + data + '</span>' : "-";
                }
            },
            {
                "targets": 8,
                "data": "is_draft",
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
                        "id": row.id,
                        "area": "web"
                    };
                    return appDataTable.action(config);
                }
            },
        ]
    };

    appDataTable.render(renderConfig);

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
                data: function(params) {
                    var postData = {};
                    postData["q"] = params.term;
                    postData[CSRF_NAME] = CSRF_VALUE;
                    return postData;
                },
                processResults: function(data) {
                    return {
                        results: data
                    };
                },
                cache: true,
            }
        });
    }

    if ($("#table-room").length) {
        tableRoom.init("#table-room");
    }

    $("#form-submit").submit(function(e) {
        let form = this;
        let category_id = $('.category_id').val();
        let room_id = $('.room_id').val();

        if (!parseInt(category_id)) {
            swal("Kategori Kamar Kosong", "Silahkan isi Kategori Kamar !", "error");
        } else if (!parseInt(room_id)) {
            swal("Kamar Kosong", "Silahkan isi Kamar !", "error");
        } else {
            $(form).unbind('submit').submit();
        }

        return false;
    });

    if ($("#table-customer").length) {
        tableCustomer.init();
    }

    $("#btn-check-in").click(function(e) {
        e.preventDefault();
        $("#modal-check-in").modal("show");
        return false;
    });

    $("body").on("click", "#btn-check-out", function(e) {
        e.preventDefault();
        let type = $("#payment_type").val();
        $(".cash").hide();
        $(".credit").hide();
        if (parseInt(type) === 0) {
            $(".cash").show();
            $(".credit").hide();
        }
        if (parseInt(type) === 1) {
            $(".cash").hide();
            $(".credit").show();
        }
        $("#myModal").modal("show");
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
        let postData = formCheckOut.serializeArray();
        let validation = false;
        postData.push({
            name: CSRF_NAME,
            value: CSRF_VALUE
        });
        postData.push({
            name: "check_out_on",
            value: $("#check_out_on").val()
        });
        postData.push({
            name: "due",
            value: $("input[name='grand_total']").val()
        });
        postData.push({
            name: "discount",
            value: $("input[name='discount']").val()
        });
        postData.push({
            name: "tax",
            value: $("input[name='tax']").val()
        });
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
                swal.close();
                tableRoom.checkOut(postData);
            });
        }

        return false;
    });

    $("body").on("keyup change", "#input-cash", function() {
        let grandTotal = $(".grand-total").val();
        let cash = $("#input-cash").val();
        let change = parseFloat(cash) - parseFloat(grandTotal);
        $("#input-change").val(change <= 0 ? 0 : change || 0);
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

    $("#checkbox-all-service").change(function(e) {
        e.preventDefault();
        $('.checkbox-service').not(this).not(":disabled").prop('checked', this.checked).change();
        return false;
    });

    $(".checkbox-service").change(function(e) {
        e.preventDefault();
        if($(this).is(":checked")){
            $(this).parent().parent().addClass("warning");
        }else{
            $(this).parent().parent().removeClass("warning");
        }
        tableRoom.Calculate();
        return false;
    });

    $("#checkbox-all-extra").change(function(e) {
        e.preventDefault();
        $('.checkbox-extra').not(this).not(":disabled").prop('checked', this.checked).change();
        return false;
    });

    $(".checkbox-extra").change(function(e) {
        e.preventDefault();
        if($(this).is(":checked")){
            $(this).parent().parent().addClass("warning");
        }else{
            $(this).parent().parent().removeClass("warning");
        }
        tableRoom.Calculate();
        return false;
    });

});