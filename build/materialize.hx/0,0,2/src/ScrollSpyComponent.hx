package ;
import js.html.Element;
typedef ScrollSpyOptions = {
?throttle:Int,
?scrollOffset:Int,
?activeClass:String,
?getActiveElement:Int -> Void
}
@:native("M.ScrollSpy")
extern class ScrollSpyComponent extends Component{
    public function new(el:Element, ?options:ScrollSpyOptions):Void;
    public static function init(els:Dynamic, ?options:ScrollSpyOptions):Array<ScrollSpyComponent>;
    public static function getInstance(el:Element):ScrollSpyComponent;

}
