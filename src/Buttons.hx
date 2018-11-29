package ;
import js.html.Element;
@:enum abstract Direction(String) from String to String{
    var top = 'top';
    var right = 'right';
    var bottom = 'bottom';
    var left = 'left';
}
typedef Options = {
?direction:Direction,
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