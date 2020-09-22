package ;
import js.html.Element;
typedef TooltipOptions = {
?exitDelay:Int,
?enterDelay:Int,
?html:String,
?margin:Int,
?inDuration:Int,
?outDuration:Int,
?position:String,
?transitionMovement:Int
}
@:native("M.Tooltip")
extern class Tooltip extends Component {
    public function new(el:Element, ?options:TooltipOptions):Void;
    public static function init(els:Dynamic, ?options:TooltipOptions):Void;
	public static function getInstance(el:Element):Tooltip;
    public function open(isManual:Bool):Void;
    public function close():Void;
}
