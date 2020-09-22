package model;
import js.html.DivElement;
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'card'))
abstract model.Card (DivElement) to DivElement {}




@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'card', 'sticky-action'))
abstract CardStickyAction (DivElement) to DivElement {}


@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'card-content'))
abstract CardContent (DivElement) to DivElement {}

@:forward
@:build(model.macro.Macro.domContainer(SpanElement, 'card-title'))
abstract CardTitle (SpanElement) to SpanElement {}

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'card-action'))
abstract CardAction (DivElement) to DivElement {}

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'card-image', 'wave'))
abstract CardImage (DivElement) to DivElement {}

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'card-stacked'))
abstract CardStacked (DivElement) to DivElement {}

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'card-reveal'))
abstract CardReveal (DivElement) to DivElement {}

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'card-tabs'))
abstract CardTabs (DivElement) to DivElement {}

@:forward
abstract CardPanel (DivElement) to DivElement {}
