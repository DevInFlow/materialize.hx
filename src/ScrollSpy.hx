package ;
import js.html.Element;
typedef ScrollSpyOptions = {
?throttle:Int,
?scrollOffset:Int,
?activeClass:String,
?getActiveElement:Int -> Void
}
@:native("M.ScrollSpy")
extern class ScrollSpy extends Component{
    public function new(el:Element, ?options:ScrollSpyOptions):Void;
    public static function init(els:Dynamic, ?options:ScrollSpyOptions):Array<ScrollSpy>;
    public static function getInstance(el:Element):ScrollSpy;

}
