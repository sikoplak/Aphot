$(document).ready(function(){

    var getType = function(){
        var type = "";
        $(".tab-pane").each(function(){
            if($(this).hasClass("active")){
                type = $(this).attr("id");
            }
        });
        return type;
    };


    $("#btn-filter").click(function(e){
        e.preventDefault();
        $("#modal-filter").modal("show"); 
        return false; 
    });

    $("#btn-print").click(function(e){
        e.preventDefault();
        let type = getType();
        if(type === "tab_1"){
            let url = $("#report-penginapan").attr("src");
            let W = window.open(url);
            W.window.print();
        }
        if(type === "tab_2"){
            let url = $("#report-restoran").attr("src");
            let W = window.open(url);
            W.window.print();
        }
        return false;
    });
    
    $("#filter-data").submit(function(e){
        e.preventDefault();
        var first = $("#first").val();
        var last = $("#last").val();
        let type = getType();

        if(!first || !last){
            swal("Tanggal tidak lengkap", "Tanggal Awal atau Tanggal Akhir Kosong !!", "error");
        }else{
            if(type === "tab_1"){
                let param = first+"_"+last;
                let url = BASE_URL+"web/report/report_reservation/"+param;
                $("#report-penginapan").attr("src", url);
                $("#modal-filter").modal("hide"); 
            }
            if(type === "tab_2"){
                let param = first+"_"+last;
                let url = BASE_URL+"web/report/report_resto/"+param;
                $("#report-restoran").attr("src", url);
                $("#modal-filter").modal("hide"); 
            }
        }

        return false;
    });

   

});