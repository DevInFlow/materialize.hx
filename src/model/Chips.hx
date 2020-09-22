package model;
import Chips.ChipsOptions;
import js.html.DivElement;

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'chips'))
abstract Chips (DivElement) to DivElement {
    public inline function init(?options:ChipsOptions):Void {
		new Chips(this, options);
    }

    public function addChip(chip:{tag:String, ?image:Dynamic}):Void {
		Chips.getInstance(this).addChip(chip);
    }

    public function deleteChip(index:Int):Void {
		Chips.getInstance(this).deleteChip(index);
    }

    public function selectChip(index:Int):Void {
		Chips.getInstance(this).selectChip(index);
    }
}

@:forward
@:build(model.macro.Macro.domContainer(Chips, 'chips-initial'))
abstract ChipsInitial (Chips) to Chips {}

@:forward
@:build(model.macro.Macro.domContainer(Chips, 'chips-placeholder'))
abstract ChipsPlaceholder (Chips) to Chips {}

@:forward
@:build(model.macro.Macro.domContainer(Chips, 'chips-autocomplete'))
abstract ChipsAutocomplete (Chips) to Chips{}
