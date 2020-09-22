package model;
import js.html.UListElement;
import js.html.LIElement;
@:forward
@:build(model.macro.Macro.domContainer(UListElement, 'tabs'))
abstract Tabs (UListElement) to UListElement{

    public function appendTab(tab:Tab):Void this.appendChild(tab);

    public function removeTab(tab:Tab):Void this.removeChild(tab);
}

@:forward
@:build(model.macro.Macro.domContainer(LIElement, 'tab'))
abstract Tab (LIElement) to LIElement{}

