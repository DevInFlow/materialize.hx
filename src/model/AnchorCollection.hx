package model;
import js.html.AnchorElement;
import js.html.DivElement;

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'collection'))
abstract AnchorCollection (DivElement) to DivElement{
    public function addItem(value:CollectionItem):Void this.appendChild(value);
}

@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'collection-item'))
abstract CollectionItem(AnchorElement) to AnchorElement{}

