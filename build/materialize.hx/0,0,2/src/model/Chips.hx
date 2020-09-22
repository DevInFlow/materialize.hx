package model;
import ChipsComponenet.ChipsOptions;
import js.html.DivElement;

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'chips'))
abstract Chips (DivElement) to DivElement {
    public inline function init(?options:ChipsOptions):Void {
        new ChipsComponenet(this, options);
    }

    public function addChip(chip:{tag:String, ?image:Dynamic}):Void {
        ChipsComponenet.getInstance(this).addChip(chip);
    }

    public function deleteChip(index:Int):Void {
        ChipsComponenet.getInstance(this).deleteChip(index);
    }

    public function selectChip(index:Int):Void {
        ChipsComponenet.getInstance(this).selectChip(index);
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
