

$(document).ready(function(){

    if($(".iradio").length){
        $('input[type="radio"].iradio').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
    }

    if($(".input-datepicker").length){
        $(".input-datepicker").datepicker({
            autoclose: true,
            clearBtn: true,
            format: 'yyyy-dd-mm',
        });
    }

});