package ;
import Component.GlobalOptions;
import js.html.NodeList;
import js.html.Element;

typedef ModalOptions = {
>GlobalOptions,
?opacity:Float,
?inDuration:Int,
?outDuration:Int,
?dismissable:Bool,
?startingTop:String,
?endingTop:String
}
@:native("M.Modal")
extern class Modal extends Component{
    public function new(el:Element, ?options:ModalOptions):Void;
    public static function init(els:Dynamic, ?options:ModalOptions):Array<Modal>;
    public static function getInstance(el:Element):Modal;
    public function open(?trigger:Dynamic):Void;
    public function close():Void;
}
