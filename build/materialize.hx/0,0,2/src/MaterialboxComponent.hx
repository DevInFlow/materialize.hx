package ;
import js.html.Element;
import Component.GlobalOptions;
typedef Options = {
>GlobalOptions,
?inDuration:Int,
?outDuration:Int
}
@:native("M.Materialbox")
extern class Materialbox extends Component {
	public static function init(els:Dynamic, ?options:Options):Array<Materialbox>;
	public static function getInstance(el:Element):Materialbox;
    public function open():Void;
    public function close():Void;

}
