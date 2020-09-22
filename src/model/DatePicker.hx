package model;
//PICKERS
import DatePickerComponenet.DatepickerOptions;
import model.base.BaseInputElement;
@:forward
@:build(model.macro.Macro.domContainer(BaseInputElement, 'datepicker'))
abstract DatePicker(BaseInputElement) to BaseInputElement{

    public inline function init(?options:DatepickerOptions):Void {
        new DatePickerComponenet(this, options);
    }

    public inline function open():Void {
        DatePickerComponenet.getInstance(this).open();
    }

    public inline function close():Void {
        DatePickerComponenet.getInstance(this).close();
    }
}
