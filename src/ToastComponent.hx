package ;
import js.html.Element;
typedef Options={
?html: String,
?displayLength: Int,
?inDuration: Int,
?outDuration: Int,
?classes: String,
?completeCallback: Void->Void,
?activationPercent: Float
}
@:native("M.Toast")
extern class ToastComponent extends Component{
    public function new(el:Element, ?options:Options):Void;
    public static function init(els:Dynamic, ?options:Options):Void;
    public static function getInstance(el:Element):ToastComponent;

    public function dismiss():Void;

}
