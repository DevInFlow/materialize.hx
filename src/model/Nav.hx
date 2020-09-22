package model;
import js.html.DivElement;
import js.html.Element;
import js.html.UListElement;
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'nav-wrapper'))
abstract NavWrapper(DivElement) to DivElement{}

@:forward
@:build(model.macro.Macro.domContainer(NavElement, 'nav'))
abstract Nav(Element) to Element{}

@:forward
@:build(model.macro.Macro.domContainer(UListElement))
abstract NavMobile(UListElement) to UListElement{}
