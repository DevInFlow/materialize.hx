package model.base;
import js.html.InputElement;
@:forward
@:build(model.macro.Macro.domContainer(InputElement))
abstract BaseInputElement(InputElement) to InputElement{
    public function setText(value:String):Void {
        this.value = value;
    }

    public function getText(value:String):String {
        return this.value;
    }

    public function validate():Bool {
        var isValide:Bool = this.value == '';
        if (isValide)
            this.classList.add('invalid');
        else
            this.classList.remove('invalid');

        return isValide;
    }
}
