package ;
import js.html.Element;
typedef AutocompleteOptions = {
?duration:Float,
?dist:Float,
?shift:Float,
?padding:Float,
?fullWidth:Bool,
?indicators:Bool,
?noWarp:Bool,
?onCycleTo:Void -> Void,
?data:Dynamic,
?limit:Float,
?onAutocomplete:Dynamic,
?minLength:Int,
?sortFunction:Dynamic -> Dynamic -> String -> Bool

}
@:native("M.Autocomplete")
extern class Autocomplete extends Component{
    public function new(el:Element, ?options:AutocompleteOptions):Void;
    public static function init(els:Dynamic, ?options:AutocompleteOptions):Array<Autocomplete>;
    public static function getInstance(el:Element):Autocomplete;

    public function selectOption(el:Element):Void;
    public function open():Void;
    public function close():Void;
    public function updateData(data:Dynamic):Void;
}
