package ;
import Component.GlobalOptions;
import js.html.Element;

@:enum abstract Alignment(String) from String{
    var Left = 'left';
    var Right = 'right';
}
typedef DropdownOptions = {
> GlobalOptions,
?alignment:Alignment,
?autoFocus:Bool,
?constrainWidth:Bool,
?container:Element,
?coverTrigger:Bool,
?closeOnClick:Bool,
?hover:Bool,
?inDuration:Int,
?outDuration:Int
}
@:native("M.Dropdown")
extern class Dropdown extends Component {
    public function new(el:Element, ?options:DropdownOptions):Void;
	public static function init(els:Dynamic, ?options:DropdownOptions):Array<Dropdown>;
	public static function getInstance(el:Element):Dropdown;

    public function open():Void;
    public function close():Void;
    public function recalculateDimensions():Void;
}
