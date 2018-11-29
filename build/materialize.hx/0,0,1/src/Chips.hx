package ;
import js.html.Element;


typedef ChipsOptions = {

?data:Array<Dynamic>,
?placeholder:String,
?secondaryPlaceholder:String,
?autocompleteOptions:Autocomplete.AutocompleteOptions,
?limit:Dynamic,
?onChipAdd:Dynamic,
?onChipSelect:Dynamic,
?onChipDelete:Dynamic
}
@:native("M.Chips")
extern class Chips extends Component{
    public function new(el:Element, ?options:ChipsOptions):Void;
    public static function init(els:Dynamic, ?options:ChipsOptions):Array<Chips>;
    public static function getInstance(el:Element):Chips;

}
