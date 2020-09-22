package ;
import js.html.Element;
@:enum abstract Direction(String) from String to String{
    var top = 'top';
    var right = 'right';
    var bottom = 'bottom';
    var left = 'left';
}
typedef FloatingActionButtonOptions = {
?direction:Direction,
?hoverEnabled:Bool,
?toolBarEnabled:Bool
}
@:native("M.FloatingActionButton")
extern class FloatingActionButtonComponenet extends Component{
    public function new(el:Element, ?options:FloatingActionButtonOptions):Void;
    public static function init(els:Dynamic, ?options:FloatingActionButtonOptions):Array<FloatingActionButtonComponenet>;
    public static function getInstance(el:Element):FloatingActionButtonComponenet;
    public function open():Void;
    public function close():Void;

}