package ;
import js.html.NodeList;
import js.html.Element;
@:native("M.Modal")

typedef Options = {
?opacity:Float,
?inDuration:Int,
?outDuration:Int,
?onOpenStart:Void -> Void,
?onOpenEnd:Void -> Void,
?onCloseStart:Void -> Void,
?onCloseEnd:Void -> Void,
?dismissable:Bool,
?startingTop:String,
?endingTop:String

}
extern class Modal {
    public static function init(els:Dynamic, ?options:Options):Void;
    public static function getInstance(el:Element):Modal;
    public function open(?trigger:Dynamic):Void;
    public function close():Void;
}
