package model;
import js.html.DivElement;
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'container'))
abstract Container(DivElement) to DivElement{}