package ;
import js.html.Element;
@:native("M.CharacterCounterComponent")
extern class CharacterCounterComponent extends Component{
    public function CharacterCounterComponent(el:Element, ?options:{}):Void;
    public static function init(els:Dynamic, ?options:{}):Array<CharacterCounterComponent>;
    public static function getInstance(el:Element):CharacterCounterComponent;
    public function updateCounter():Void;

}
