package ;
import js.html.Element;
typedef TabsOptions = {
?duration:Float,
?onShow:Void -> Void,
?swipable:Bool,
?responsiveThreshold:Float
}
@:native("M.Tabs")
extern class TabsComponent extends Component{
    public function new(el:Element, ?options:TabsOptions):Void;
    public static function init(els:Dynamic, ?options:TabsOptions):Array<TabsComponent>;
    public static function getInstance(el:Element):TabsComponent;
    public function updateTabIndicator():Void;
    public function select(tabId:String):Void;

}
