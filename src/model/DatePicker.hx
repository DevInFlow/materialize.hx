package model;
//PICKERS
import DatePicker.DatepickerOptions;
import model.base.BaseInputElement;
@:forward
@:build(model.macro.Macro.domContainer(BaseInputElement, 'datepicker'))
abstract DatePicker(BaseInputElement) to BaseInputElement{

    public inline function init(?options:DatepickerOptions):Void {
		new DatePicker(this, options);
    }

    public inline function open():Void {
		DatePicker.getInstance(this).open();
    }

    public inline function close():Void {
		DatePicker.getInstance(this).close();
    }
}
