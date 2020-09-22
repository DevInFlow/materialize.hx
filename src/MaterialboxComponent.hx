package ;
import js.html.Element;
import Component.GlobalOptions;
typedef Options = {
>GlobalOptions,
?inDuration:Int,
?outDuration:Int
}
@:native("M.Materialbox")
extern class MaterialboxComponent  extends Component{
    public static function init(els:Dynamic, ?options:Options):Array<MaterialboxComponent>;
    public static function getInstance(el:Element):MaterialboxComponent;
    public function open():Void;
    public function close():Void;

}
