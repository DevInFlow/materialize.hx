package ;
import js.html.Element;
typedef PushpinOptions = {
?top:Int,
?bottom:Int,
?offset:Int,
?onPositionChange:Void -> Void
}
@:native("M.Pushpin")
extern class Pushpin extends Component{
    public function new(el:Element, ?options:PushpinOptions):Void;
    public static function init(els:Dynamic, ?options:PushpinOptions):Array<Pushpin>;
    public static function getInstance(el:Element):Pushpin;
}
