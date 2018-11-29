package model;
import js.jquery.JQuery;
import haxe.io.Error;
import haxe.io.Input;
import js.Browser.document;
import js.html.*;
import model.Css.Forms;
@:forward
abstract Autocomplete (InputElement) to InputElement {
    public inline function new() {
        this = cast document.createInputElement();
        this.classList.add(model.Css.Forms.autocomplete);
    }

}

@:enum abstract CheckboxType(String) to String{

}

@:forward
abstract Checkbox (InputElement) to InputElement {
    public inline function new() {
        this = cast document.createInputElement();
        this.type = 'checkbox';
        this.classList.add(model.Css.Forms.autocomplete);
    }
}

@:forward
abstract Chips (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(chips);
    }
}
@:forward
abstract ChipsInitial (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(chips, chipsInitial);
    }
}
@:forward
abstract ChipsPlaceholder (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(chips, chipsPlaceholder);
    }
}
@:forward
abstract ChipsAutocomplete (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(chips, chipsAutocomplete);
    }
}


//PICKERS

@:forward
abstract Picker(InputElement) to InputElement{
    public inline function new(type:model.Css.Pickers) {
        this = cast document.createInputElement();
        this.classList.add(cast type);
    }
}
//RADIO
@:forward
abstract Radio(InputElement) to InputElement{
    public inline function new() {
        this = cast document.createInputElement();
        this.type = 'radio';
    }
}
@:forward
abstract RadioWithGap(InputElement) to InputElement{
    public inline function new() {
        this = cast document.createInputElement();
        this.type = 'radio';
        this.classList.add(withGap);
    }
}

//RANGE
@:forward
abstract RangeNoUislider(DivElement) to DivElement{
    public inline function new(options:Options) {
        this = cast document.createDivElement();
        this.classList.add(withGap);
        NoUiSlider.create(this, options);
    }
}
@:forward
abstract HTML5Range(ParagraphElement) to ParagraphElement{
    public inline function new(min:Int, max:Int) {
        this = cast document.createParagraphElement();
        this.classList.add(rangeField);
        var input:InputElement = document.createInputElement();
        input.max = cast max;
        input.min = cast min;
        input.type = 'range';
        this.appendChild(input);
    }
}

//SELECT
@:forward
abstract Select(SelectElement) to SelectElement{
    public inline function new(?type:model.Css.Selects) {
        this = document.createSelectElement();
        if (type != null) this.classList.add(type);
    }
}

//SWITCHES
@:forward
abstract Switch(DivElement) to DivElement{
    public inline function new(labelOn:String, labelOff:String) {
        this = document.createDivElement();
        var label:LabelElement = document.createLabelElement();
        var input:InputElement = document.createInputElement();
        var span:SpanElement = document.createSpanElement();
        input.type = 'checkbox';
        span.classList.add(lever);
        this.classList.add(switchForm);
        label.innerHTML = labelOff + input.outerHTML + span.outerHTML + labelOn;
        this.appendChild(label);
    }
}

//TEXTINPUT

@:forward
abstract InputField(DivElement) to DivElement{
    public inline function new() {
        this = document.createDivElement();
        this.classList.add(inputField);
    }

}

@:enum abstract InputType(String) to String{
    var email = 'email';
    var checkbox = 'checkbox';
    var password = 'password';
    var numeric = 'numeric';
}

typedef TextInputParams = {
type:InputType,
?value:String,
?label:String,
?validate:Bool,
?placeholder:String,
?helper:{
error:String,
success:String
}
}

@:forward
abstract TextInput(InputField) to InputField{
    public inline function new(params:TextInputParams) {

        this = new InputField();
        this.id = Random.string(16);
        var input:InputElement = document.createInputElement();
        input.type = params.type;
        input.id = Random.string(16);
        this.appendChild(input);

        if (Reflect.hasField(params, 'value'))
            input.value = params.value;

        if (params.validate)
            input.classList.add(validate);

        if (Reflect.hasField(params, 'placeholder'))
            input.placeholder = params.placeholder;

        if (Reflect.hasField(params, 'label')) {
            var label:LabelElement = document.createLabelElement();
            label.setAttribute('for', input.id);
            label.innerText = params.label;
            this.appendChild(label);
        }

        if (Reflect.hasField(params, 'helper')) {
            var helper:SpanElement = document.createSpanElement();
            helper.classList.add(helperText);
            helper.setAttribute('data-error', params.helper.error);
            helper.setAttribute('data-success', params.helper.success);
            this.appendChild(helper);
        }
    }

    public function setLabel(value:String) {
        new JQuery(this).find("label").text(value);
    }

    public function setPlaceholder(value:String) {
        new JQuery(this).find("input").attr('placeholder', value);
    }

    public function setHelper(error:String, success:String):Void {
        new JQuery(this).find("span." + helperText).attr('data-error', error);
        new JQuery(this).find("span." + helperText).attr('data-success', success);
    }

}

