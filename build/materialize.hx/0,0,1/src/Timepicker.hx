package ;
import js.html.Element;

typedef I18N = {
?cancel:String,
?clear:String,
?done:String
}
typedef TimepickerOptions = {
?duration:Int,
?container:String,
?showClearBtn:Bool,
?defaultTime:String,
?fromNow:Int,
?i18n:I18N,
?autoClose:Bool,
?twelveHour:Bool,
?vibrate:Bool,
?onOpenStart:Dynamic,
?onOpenEnd:Dynamic,
?onCloseStart:Dynamic,
?onCloseEnd:Dynamic,
?onSelect:Dynamic,
}
@:native("M.Timepicker")
extern class Timepicker extends Component{
    public function new(el:Element, ?options:TimepickerOptions):Void;
    public static function init(els:Dynamic, ?options:TimepickerOptions):Array<Timepicker>;
    public static function getInstance(el:Element):Timepicker;
    public function open():Void;
    public function close():Void;
    public function showView(view:String):Void;


}
