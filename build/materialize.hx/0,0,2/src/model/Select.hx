package model;
import js.html.SelectElement;
import FormSelect.FormSelectOptions;
@:forward
@:build(model.macro.Macro.domContainer(SelectElement))
abstract Select(SelectElement) to SelectElement{
    public inline function init(?options:FormSelectOptions):Void {
		new FormSelect(this, options);
    }
}