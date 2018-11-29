package ;
import js.html.Element;
@:native("M.CharacterCounter")
extern class CharacterCounter extends Component{
    public function new(el:Element, ?options:{}):Void;
    public static function init(els:Dynamic, ?options:{}):Array<CharacterCounter>;
    public static function getInstance(el:Element):CharacterCounter;
    public function updateCounter():Void;

}
