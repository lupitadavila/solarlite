$(document).on('turbolinks:load', function(){

  if( $('#chart-div').length >0 ){
    google.charts.load('current', {'packages':['line']});
    // google.charts.setOnLoadCallback(drawChart);
    google.charts.setOnLoadCallback(drawAxisTickColors);

    function drawAxisTickColors() {
      var data = new google.visualization.DataTable();
      data.addColumn('number', 'Days');
      data.addColumn('number', 'Goal');
      data.addColumn('number', 'Usage');

      data.addRows([
        [0, 30, 0],    [1, 30, 5],   [2, 30, 15],  [3, 30, 9],   [4, 30, 10],  [5, 30, 5],
        [6, 30, 3],   [7, 30, 19],  [8, 30, 25],  [9, 30, 32],  [10, 30, 24], [11, 30, 27],
        [12, 30, 22], [13, 30, 32], [14, 30, 34], [15, 30, 39], [16, 30, 36], [17, 30, 40],
        [18, 30, 44], [19, 30, 46], [20, 30, 34], [21, 30, 47], [22, 30, 48], [23, 30, 49],
        [24, 30, 52], [25, 30, 42], [26, 30, 44], [27, 30, 43], [28, 30, 41], [29, 30, 45],
        [30, 30, 47], [31, 30, 52], [32, 30, 53], [33, 30, 51], [34, 30, 54], [35, 30, 57],
        [36, 30, 54], [37, 30, 50], [38, 30, 47], [39, 30, 33], [40, 30, 36], [41, 30, 37],
        [42, 30, 55], [43, 30, 48], [44, 30, 39], [45, 30, 29], [46, 30, 25], [47, 30, 22],
        [48, 30, 24], [49, 30, 20], [50, 30, 38], [51, 30, 37], [52, 30, 29], [53, 30, 22],
        [54, 30, 33], [55, 30, 34], [56, 30, 35], [57, 30, 37], [58, 30, 32], [59, 30, 30],
        [60, 30, 26], [61, 30, 42], [62, 30, 37], [63, 30, 39], [64, 30, 20], [65, 30, 41],
        [66, 30, 22], [67, 30, 34], [68, 30, 37], [69, 30, 32]
      ]);

      var options = {
        hAxis: {
          title: 'Time',
          textStyle: {
            color: '#333',
            fontName: 'Dosis'
          },
          titleTextStyle: {
            color: '#333',
            fontSize: 16,
            fontName: 'Dosis'
          }
        },
        vAxis: {
          title: 'Watts',
          textStyle: {
            color: '#333'
          },
          titleTextStyle: {
            color: '#333'
          }
        },
        colors: ['#00BEF7', '#0083ab']
      };
      var chart = new google.charts.Line(document.getElementById('chart-div'));
      // var chart = new google.visualization.LineChart(document.getElementById('chart-div'));
      chart.draw(data, options);
    }
  }

});
