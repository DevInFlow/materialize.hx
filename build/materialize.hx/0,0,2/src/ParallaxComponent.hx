package ;
import js.html.Element;
typedef ParallaxOptions={
    ?responsiveThreshold:Float
}
@:native("M.Parallax")
extern class ParallaxComponent  extends Component{
    public function new(el:Element, ?options:ParallaxOptions):Void;
    public static function init(els:Dynamic, ?options:ParallaxOptions):Array<ParallaxComponent>;
    public static function getInstance(el:Element):ParallaxComponent;

}
