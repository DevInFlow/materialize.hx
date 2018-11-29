package ;
import js.html.Element;
typedef TabsOptions = {
?duration:Float,
?onShow:Void -> Void,
?swipable:Bool,
?responsiveThreshold:Float
}
@:native("M.Tabs")
extern class Tabs extends Component{
    public function new(el:Element, ?options:TabsOptions):Void;
    public static function init(els:Dynamic, ?options:TabsOptions):Array<Tabs>;
    public static function getInstance(el:Element):Tabs;
    public function updateTabIndicator():Void;
    public function select(tabId:String):Void;

}
