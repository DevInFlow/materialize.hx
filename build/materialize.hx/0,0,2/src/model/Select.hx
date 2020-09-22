package model;
import js.html.SelectElement;
import FormSelectComponenet.FormSelectOptions;
@:forward
@:build(model.macro.Macro.domContainer(SelectElement))
abstract Select(SelectElement) to SelectElement{
    public inline function init(?options:FormSelectOptions):Void {
        new FormSelectComponenet(this, options);
    }
}