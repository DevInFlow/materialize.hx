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
?i18n:Dynamic,
?events:Array<Dynamic>,
?onSelect:Dynamic,
?onOpen:Dynamic,
?onClose:Dynamic,
?onDraw:Dynamic

}
@:native("M.Datepicker")
extern class Datepicker extends Component{
    public function new(el:Element, ?options:DatepickerOptions):Void;
    public static function init(els:Dynamic, ?options:DatepickerOptions):Array<Datepicker>;
    public static function getInstance(el:Element):Datepicker;
    public function destroySelects():Void;
    public function toString(format:String):String;
    public function setDate(?date:Date):String;
    public function gotoDate(date:Date):Void;

}
