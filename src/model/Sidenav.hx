package model;
import js.html.LIElement;
import js.html.UListElement;
@:forward
@:build(model.macro.Macro.domContainer(UListElement, 'sidenav'))
abstract Sidenav(UListElement) to UListElement{}

@:forward
@:build(model.macro.Macro.domContainer(LIElement))
abstract SidenavItem(LIElement) to LIElement{}