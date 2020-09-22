package ;
import js.html.Element;
typedef FormSelectOptions = {
?classes:String,
	?dropdownOptions:Dropdown.DropdownOptions
}
@:native("M.FormSelect")
extern class FormSelect extends Component {
    public function new(el:Element, ?options:FormSelectOptions):Void;
	public static function init(els:Dynamic, ?options:FormSelectOptions):Array<FormSelect>;
	public static function getInstance(el:Element):FormSelect;
    public function getSelectedValues():Array<Dynamic>;
}
