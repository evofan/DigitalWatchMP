class SetInterval {
    private var intervalId:Number;
    private var duration:Number = 1000;

    public function SetInterval() {
        trace("SetInterval()");
        beginInterval();
    }

    private function beginInterval():Void {
        trace("beginInterval実行");
        if (intervalId != null) {
            clearInterval(intervalId);
            trace("clearInterval");
        }
        intervalId = setInterval(this, "executeCallback", duration);
        trace("intervalId: " + intervalId);
    }

    public function executeCallback():Void {

        var obj_dw:SetDigitalWatch = new SetDigitalWatch();
        _root.dw_fulldate = obj_dw.getFullDate();

        _root.dw_hour = obj_dw.getDispHours();
        _root.dw_minute = obj_dw.getDispMinutes();
        _root.dw_month = obj_dw.getDispMonths();
        _root.dw_today = obj_dw.getDispToday();
        _root.dw_day = obj_dw.getDispDay();
    }

}
