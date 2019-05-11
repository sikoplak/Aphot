$(document).ready(function () {

    var months = ["jan","feb","mar","apr","mei","jun","jul","aug","sept","okt","nov","des"];

    var pieOptions = {
        //Boolean - Whether we should show a stroke on each segment
        segmentShowStroke: true,
        //String - The colour of each segment stroke
        segmentStrokeColor: "#fff",
        //Number - The width of each segment stroke
        segmentStrokeWidth: 2,
        //Number - The percentage of the chart that we cut out of the middle
        percentageInnerCutout: 50, // This is 0 for Pie charts
        //Number - Amount of animation steps
        animationSteps: 100,
        //String - Animation easing effect
        animationEasing: "easeOutBounce",
        //Boolean - Whether we animate the rotation of the Doughnut
        animateRotate: true,
        //Boolean - Whether we animate scaling the Doughnut from the centre
        animateScale: false,
        //Boolean - whether to make the chart responsive to window resizing
        responsive: true,
        // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
        maintainAspectRatio: true,
        //String - A legend template
        legendTemplate: function(data){
            return  "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>";
        }
    };

    var barChartOptions = {
        //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
        scaleBeginAtZero: true,
        //Boolean - Whether grid lines are shown across the chart
        scaleShowGridLines: true,
        //String - Colour of the grid lines
        scaleGridLineColor: "rgba(0,0,0,.05)",
        //Number - Width of the grid lines
        scaleGridLineWidth: 1,
        //Boolean - Whether to show horizontal lines (except X axis)
        scaleShowHorizontalLines: true,
        //Boolean - Whether to show vertical lines (except Y axis)
        scaleShowVerticalLines: true,
        //Boolean - If there is a stroke on each bar
        barShowStroke: true,
        //Number - Pixel width of the bar stroke
        barStrokeWidth: 2,
        //Number - Spacing between each of the X value sets
        barValueSpacing: 5,
        //Number - Spacing between data sets within X values
        barDatasetSpacing: 1,
        //String - A legend template
        legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
        //Boolean - whether to make the chart responsive
        responsive: true,
        maintainAspectRatio: true
      };

    var loadData = function () {
        swal({
            html: true,
            title: '<small><i class="fa fa-spinner fa-spin"></i>&nbsp;&nbsp;Sedang memuat data...</small>',
            allowOutsideClick: false,
            allowEscapeKey: false,
            allowEnterKey: false,
            showCancelButton: false,
            showConfirmButton: false,
        });
        var postData = {};
        headerRequest();
        postData[CSRF_NAME] = CSRF_VALUE;
        $.post(BASE_URL + "api/dashboard/dashboard_utama", postData, function (result) {
            setTimeout(function () {
                swal.close();
                $("#reservasi-penginapan").text(result.reservasi_penginapan);
                $("#restoran").text(result.restoran);
                $("#kamar").text(result.kamar);
                $("#meja").text(result.meja);
                $("#pelanggan").text(result.tamu);
                $("#transaksi").text("IDR " + result.transaksi.due || 0);
                chartRoom(result.room_chart);
                chartMenu(result.menu_chart);
                barChart(result.bar_chart);
            }, 1000);
        });
    }

    var chartRoom = function (data) {
        var pieChartCanvas = $("#pieChart1").get(0).getContext("2d");
        var pieChart = new Chart(pieChartCanvas);
        var PieData = new Array();
        data.forEach(function (row) {
            let items = {
                value: parseFloat(row.due),
                color: randomColor(),
                highlight: randomColor(),
                label: row.category_name
            }
            PieData.push(items);
        });
        pieChart.Doughnut(PieData, pieOptions);
    }

    var chartMenu = function (data) {
        var pieChartCanvas = $("#pieChart2").get(0).getContext("2d");
        var pieChart = new Chart(pieChartCanvas);
        var PieData = new Array();
        data.forEach(function (row) {
            let items = {
                value: parseFloat(row.due),
                color: randomColor(),
                highlight: randomColor(),
                label: row.menu_name
            }
            PieData.push(items);
        });
        pieChart.Doughnut(PieData, pieOptions);
    }

    var barChart = function(items){
        var barChartCanvas = $("#barChart").get(0).getContext("2d");
        var barChart = new Chart(barChartCanvas);
        var penginapan = new Array();
        var restoran = new Array();

        var jsonPenginapan = items.penginapan[0];
        months.forEach(function(row){
            penginapan.push(parseFloat(jsonPenginapan[row]));
        });
        
        var jsonRestoran = items.restoran[0];
        months.forEach(function(row){
            restoran.push(parseFloat(jsonRestoran[row]));
        });


        var barChartData = {
            labels: ["Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul","Ags","Sept","Okt","Nov","Des"],
            datasets: [
                {
                  label: "Penginapan",
                  fillColor: randomColor(),
                  strokeColor: randomColor(),
                  pointColor: randomColor(),
                  pointStrokeColor: randomColor(),
                  pointHighlightFill: randomColor(),
                  pointHighlightStroke: randomColor(),
                  data: penginapan
                },
                {
                  label: "Restoran",
                  fillColor: randomColor(),
                  strokeColor: randomColor(),
                  pointColor: randomColor(),
                  pointStrokeColor: randomColor(),
                  pointHighlightFill: randomColor(),
                  pointHighlightStroke: randomColor(),
                  data: restoran
                }
              ]
        };
        barChartData.datasets[1].fillColor = randomColor();
        barChartData.datasets[1].strokeColor = randomColor();
        barChartData.datasets[1].pointColor = randomColor();
        barChartOptions.datasetFill = false;
        barChart.Bar(barChartData, barChartOptions);
    }


    document.onreadystatechange = function () {
        if (document.readyState == "complete") {
            loadData();
        }
    }

});