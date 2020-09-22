package ;
import js.html.Element;
typedef DatepickerOptions = {
?autoClose:Bool,
?format:String,
?parse:Dynamic -> String -> Date,
?defaultDate:Date,
?setDefaultDate:Bool,
?disableWeekends:Bool,
?disableDayFn:Date -> Bool,
?firstDay:Int,
?minDate:Date,
?maxDate:Date,
?yearRange:Dynamic,
?isRTL:Bool,
?showMonthAfterYear:Bool,
?showDaysInNextAndPreviousMonths:Bool,
?container:Element,
?showClearBtn:Bool,
?i18n:I18,
?events:Array<Dynamic>,
?onSelect:Dynamic,
?onOpen:Dynamic,
?onClose:Dynamic,
?onDraw:Dynamic
}

typedef I18 = {
?cancel:String,
?clear:String,
?done:String,
?previousMonth:String,
?nextMonth:String,
?months:Array<String>,
?monthsShort:Array<String>,
?weekdays:Array<String>,
?weekdaysShort:Array<String>,
?weekdaysAbbrev:Array<String>,
}

@:native("M.Datepicker")
extern class DatePickerComponenet extends Component{
    public function new(el:Element, ?options:DatepickerOptions):Void;
    public static function init(els:Dynamic, ?options:DatepickerOptions):Array<DatePickerComponenet>;
    public static function getInstance(el:Element):DatePickerComponenet;
    public function open():Void;
    public function close():Void;
    public function destroySelects():Void;
    public function toString(format:String):String;
    public function setDate(?date:Date):String;
    public function gotoDate(date:Date):Void;

}
