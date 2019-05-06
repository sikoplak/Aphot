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
            let selected = $('.room_id option[value=' + room_id + ']').length;
            $(".capacity[data-id='" + row_id + "']").val(capacity);
            $(".occupant[data-id='" + row_id + "']").attr("max", capacity);
            $(".occupant[data-id='" + row_id + "']").val(occupant);
            tableRoom.Calculate(table);
            return false;
        });

        $("body").on("keyup change", "#number_of_days", function() {
            let value = $(this).val();
            $(".duration").val(value);
            tableRoom.Calculate(table);
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
        $(".total-discount").text(total_disc);
        $(".total-tax").text(total_tax);

        var grandTotal = (parseFloat(subtotal) + parseFloat(total_tax)) - parseFloat(total_disc);
        $(".grand-total-txt").text(grandTotal);
        $(".grand-total").val(grandTotal);
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
                "data": "invoices_invoice_number"
            },
            {
                "targets": 2,
                "data": "invoices_invoice_date",
            },
            {
                "targets": 3,
                "data": "customers_name",
                "render": function(data, type, row, meta) {
                    return data ? "<a target='_blank' href='" + BASE_URL + "web/customer/show/" + row.invoices_customer_id + "'>" + data + "</a>" : "-";
                }
            },
            {
                "targets": 4,
                "data": "invoices_number_of_days",
                "render": function(data, type, row, meta) {
                    return data ? data : "-";
                }
            },
            {
                "targets": 5,
                "data": "invoices_check_in_on",
                "render": function(data, type, row, meta) {
                    return data ? '<span class="label label-info">' + data + '</span>' : "-";
                }
            },
            {
                "targets": 6,
                "data": "invoices_check_out_on",
                "render": function(data, type, row, meta) {
                    return data ? '<span class="label label-info">' + data + '</span>' : "-";
                }
            },
            {
                "targets": 7,
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
                "targets": 8,
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

});