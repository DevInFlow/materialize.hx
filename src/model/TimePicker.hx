package model;
import model.base.BaseInputElement;
import Timepicker.TimepickerOptions;
@:forward
@:build(model.macro.Macro.domContainer(BaseInputElement, 'timepicker'))
abstract TimePicker(BaseInputElement) to BaseInputElement{
    public inline function init(?options:TimepickerOptions):Void {
		new Timepicker(this, options);
    }

    public inline function open():Void {
		Timepicker.getInstance(this).open();
    }

    public inline function close():Void {
		Timepicker.getInstance(this).close();
    }
}
