package ;
import js.html.Element;
typedef ParallaxOptions={
    ?responsiveThreshold:Float
}
@:native("M.Parallax")
extern class Parallax extends Component {
    public function new(el:Element, ?options:ParallaxOptions):Void;
	public static function init(els:Dynamic, ?options:ParallaxOptions):Array<Parallax>;
	public static function getInstance(el:Element):Parallax;

}
