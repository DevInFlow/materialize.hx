package ;
import js.html.Element;
typedef Options = {
?direction:Bool,
?hoverEnabled:Bool,
?toolBarEnabled:Bool
}
@:native("M.FloatingActionButton")
extern class FloatingActionButton extends Component{
    public function new(el:Element, ?options:Options):Void;
    public static function init(els:Dynamic, ?options:Options):Array<FloatingActionButton>;
    public static function getInstance(el:Element):FloatingActionButton;
    public function open():Void;
    public function close():Void;

}