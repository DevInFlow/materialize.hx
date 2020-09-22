package ;
import js.html.Element;
typedef PushpinOptions = {
?top:Int,
?bottom:Int,
?offset:Int,
?onPositionChange:Void -> Void
}
@:native("M.Pushpin")
extern class PushpinComponent extends Component{
    public function new(el:Element, ?options:PushpinOptions):Void;
    public static function init(els:Dynamic, ?options:PushpinOptions):Array<PushpinComponent>;
    public static function getInstance(el:Element):PushpinComponent;
}
