var statistical = {
    init: function() {
        var monthArr = this.setMonthArr(),
            AddUserNumArr = this.setUserNumArrWithType(monthArr, '1'),
            RemoveUserNumArr = this.setUserNumArrWithType(monthArr, '5'),
            userArr = this.setUserNumArr(monthArr),
            flag = $('#pageLipei').val();

        monthArr = this.formatMonth(monthArr);

        var barData = {
            labels: monthArr,
            datasets: [
                {
                    label: flag == 1 ? "My Second dataset" : "添加成员",
                    fillColor: "rgba(26,179,148,0.5)",
                    strokeColor: "rgba(26,179,148,0.8)",
                    highlightFill: "rgba(26,179,148,0.75)",
                    pointColor : "#00ab9f",
                    highlightStroke: "#00ab9f",
                    data: flag == 1 ? userArr : AddUserNumArr
                }
            ]
        };

        if(!flag) {
            barData.datasets.push({
                    label: "删除成员",
                    fillColor: "rgba(70,79,136,0.5)",
                    strokeColor: "rgba(70,79,136,0.8)",
                    highlightFill: "rgba(70,79,136,0.75)",
                    pointColor : "#464f88",
                    highlightStroke: "#464f88",
                    data: RemoveUserNumArr
                });
        }

        var barOptions = {
            scaleBeginAtZero: true,
            scaleShowGridLines: true,
            scaleGridLineColor: "rgba(0,0,0,.05)",
            scaleGridLineWidth: 1,
            scaleFontSize: 12,
            responsive: true,
            pointDot: false,
            datasetStrokeWidth: 1
        };
        var ctx = document.getElementById(flag == 1 ? "barChart" : "linkChart").getContext("2d");
        var myNewChart = new Chart(ctx).Line(barData, barOptions);
    },

    setMonthArr: function() {
        var monthArr = new Array(),
            today = new Date(),
            currentMonth = today.getMonth() + 1,
            currentYear = today.getFullYear();

        for(var i = 1; i <= 13; i++) {
            var month = currentMonth - (7 - i),
                year = currentYear;

            if(month <= 0) {
                month = 12 + month;
                year = currentYear - 1;
            } else if(month > 12 ) {
                month = month - 12;
                year = currentYear + 1;
            }

            var Arr = new Array(year,month,0);
            monthArr.push(Arr);
        }

        return monthArr;
    },

    formatMonth: function(monthArr) {
        var newMonthArr = new Array();

        for(var i = 0; i < monthArr.length; i++) {
            newMonthArr[i] = monthArr[i][0] + '/' + monthArr[i][1];
        }

        return newMonthArr;
    },

    setUserNumArr: function(monthArr) {
        var userNumArr = new Array();

        for(var i = 0; i < charData.length; i++) {
            for(var j = 0; j < monthArr.length; j++) {
                if(charData[i]['year'] == monthArr[j][0] && charData[i]['month'] == monthArr[j][1]) {
                    monthArr[j][2] = charData[i]['usernum'];
                }
            }
        }

        for(var j = 0; j < monthArr.length; j++) {
            userNumArr[j] = monthArr[j][2];
        }

        return userNumArr;
    },

    setUserNumArrWithType: function(monthArr, type) {
        var tmpArr = $.extend(true, [], monthArr),
            userNumArr = new Array();

        for(var i = 0; i < charData.length; i++) {
            for(var j = 0; j < tmpArr.length; j++) {
                if(charData[i]['year'] == tmpArr[j][0] && charData[i]['month'] == tmpArr[j][1] && charData[i]['type'] == type) {
                    tmpArr[j][2]=charData[i]['usernum'];
                }
            }
        }

        for(var j = 0; j < tmpArr.length; j++) {
            userNumArr[j] = tmpArr[j][2];
        }

        return userNumArr;
    }
};

statistical.init();