package model;
import model.base.BaseInputElement;
import TimePickerComponent.TimepickerOptions;
@:forward
@:build(model.macro.Macro.domContainer(BaseInputElement, 'timepicker'))
abstract TimePicker(BaseInputElement) to BaseInputElement{
    public inline function init(?options:TimepickerOptions):Void {
        new TimePickerComponent(this, options);
    }

    public inline function open():Void {
        TimePickerComponent.getInstance(this).open();
    }

    public inline function close():Void {
        TimePickerComponent.getInstance(this).close();
    }
}
