package ;

import js.html.Element;
import Component.GlobalOptions;
typedef SidenavOptions = {
>GlobalOptions,
?edge:String,
?draggable:Bool,
?inDuration:Int,
?outDuration:Int,
?preventScrolling:Bool
}
@:native("M.Sidenav")
extern class Sidenav extends Component {
    public function new(el:Element, ?options:SidenavOptions):Void;
	public static function init(els:Dynamic, ?options:SidenavOptions):Array<Sidenav>;
	public static function getInstance(el:Element):Sidenav;
    public function open():Void;
    public function close():Void;

}
