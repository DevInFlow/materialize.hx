package model;
import js.html.DivElement;
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'header'))
abstract Header(DivElement) to DivElement{}
