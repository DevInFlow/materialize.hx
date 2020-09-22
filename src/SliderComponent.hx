package ;
import js.html.Element;
typedef Options = {
?indicators:Bool,
?height:Int,
?duration:Int,
?interval:Int
}
@:native("M.Slider")
extern class SliderComponent extends Component{
    public function new(el:Element, ?options:Options):Void;
    public static function init(els:Dynamic, ?options:Options):Array<SliderComponent>;
    public static function getInstance(el:Element):SliderComponent;

    public function set(index:Int):Void;
    public function pause():Void;
    public function start():Void;
    public function next():Void;
    public function prev():Void;

}
