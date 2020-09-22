package ;
import js.html.Element;
typedef FormSelectOptions = {
?classes:String,
?dropdownOptions:DropdownComponent.DropdownOptions
}
@:native("M.FormSelect")
extern class FormSelectComponenet extends Component{
    public function new(el:Element, ?options:FormSelectOptions):Void;
    public static function init(els:Dynamic, ?options:FormSelectOptions):Array<FormSelectComponenet>;
    public static function getInstance(el:Element):FormSelectComponenet;
    public function getSelectedValues():Array<Dynamic>;
}
