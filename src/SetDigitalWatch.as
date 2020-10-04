class SetDigitalWatch extends Date {

    private var fulldate:String;

    private var now_hour:String;
    private var now_minute:String;
    private var now_second:String;
    private var now_month:String;
    private var now_today:String;
    private var now_day:String;

    public function SetDigitalWatch() {
        var days:Array = new Array('日', '月', '火', '水', '木', '金', '土');
        //var months:Array = new Array ('1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月');
        var months:Array = new Array('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12');

        var disp_hours:String;
        var disp_minutes:String;
        var disp_seconds:String;
        var disp_days:String;
        var disp_months:String;

        var year:Number = this.getFullYear();
        //DateクラスのgetFullYear(）→1900～1999までは00～99の二桁、それ以外は4桁

        var month:Number = this.getMonth();
        //DateクラスのgetMonth(）→0（1月）～11（12月）

        var today:Number = this.getDate();
        //DateクラスのgetDay(）→1～31

        var day:Number = this.getDay();
        //DateクラスのgetDay(）→0（日）～6（土）
        var disp_days:String = days[day];

        var disp_months:String = months[month];

        var hours:Number = this.getHours();
        //HoursクラスのgetHours(）→0～23（24時間表示まま→アナログ時に要変換）

        var minutes:Number = this.getMinutes();
        //MinutesクラスのgetMinutes()→0～59

        var seconds:Number = this.getSeconds();
        //SecondsクラスのgetSeconds()→0～59

        /*
           if (hours < 10) {
           disp_hours = String('0' + hours)
           } else {
           (disp_hours = String(hours));
           }
         */
        disp_hours = String(hours);

        if (minutes < 10) {
            disp_minutes = String('0' + minutes)
        } else {
            (disp_minutes = String(minutes));
        }

        if (seconds < 10) {
            disp_seconds = String('0 ' + seconds)
        } else {
            (disp_seconds = String(seconds));
        }

        //fullhour = disp_hours + "：　" + disp_minutes  + "：　" + disp_seconds;
        fulldate = year + "年　" + disp_months + today + "日 " + disp_days;

        now_hour = disp_hours;
        now_minute = disp_minutes;
        now_second = disp_seconds;
        now_month = disp_months;
        //now_today = (String(day)+"日");
        now_today = String(today);

        now_day = ("(" + disp_days + ")");

    }

    public function getFullDate():String {
        return fulldate;
    }

    /*
       public function getFullHour():String {
       return fullhour;
       }
     */

    public function getDispHours():String {
        return now_hour;
    }

    public function getDispMinutes():String {
        return now_minute;
    }

    public function getDispSeconds():String {
        return now_second;
    }

    public function getDispMonths():String {
        return now_month;
    }

    public function getDispToday():String {
        return now_today;
    }

    public function getDispDay():String {
        return now_day;
    }

}
