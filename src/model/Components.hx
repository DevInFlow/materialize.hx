package model;

import haxe.ds.Either;
import haxe.extern.EitherType;
import model.Css.Buttons;
import js.Browser.document;
import js.html.*;
import js.jquery.JQuery;
import model.Css.Color;
import model.Css.Componenets;
import model.Css.Icons;
import model.Css.Grid;

//TODO NAV

@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'brand-logo'))
abstract BrandLogo(AnchorElement) to AnchorElement{}

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'nav-wrapper'))
abstract NavWrapper(DivElement) to DivElement{}

@:forward
@:build(model.macro.Macro.domContainer(nav, 'nav'))
abstract Nav(Element) to Element{}

@:forward
@:build(model.macro.Macro.domContainer(UListElement))
abstract NavMobile(UListElement) to UListElement{}
//TODO BREADCRUMB
@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'col'))
abstract BreadcrumbContainer (DivElement) to DivElement {
    public function addItem(breadcrumb:Breadcrumb):Void this.appendChild(breadcrumb);
    public function removeItem(breadcrumb:Breadcrumb):Void this.removeChild(breadcrumb);
}

@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'breadcrumb'))
abstract Breadcrumb (AnchorElement) to AnchorElement{}

//TODO BUTTONS

@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'btn', 'waves-effect', 'waves-light'))
abstract RaisedButton (AnchorElement) to AnchorElement{}

@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'red', 'btn-floating', 'waves-effect', 'waves-light'))
abstract FloatingButton (AnchorElement) to AnchorElement {}

@:forward
@:build(model.macro.Macro.domContainer(ButtonElement, 'waves-effect', 'waves-light','btn'))
abstract SubmitButton (ButtonElement) to ButtonElement {}

//TODO CARDS

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'card'))
abstract Card (DivElement) to DivElement {}

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

//TODO TABS

@:forward
@:build(model.macro.Macro.domContainer(UListElement, 'tabs'))
abstract Tabs (UListElement) to UListElement{

    public function appendTab(tab:Tab):Void this.appendChild(tab);

    public function removeTab(tab:Tab):Void this.removeChild(tab);
}

@:forward
@:build(model.macro.Macro.domContainer(LIElement, 'tab'))
abstract Tab (LIElement) to LIElement{}


//TODO COLLECTIONS
@:forward
@:build(model.macro.Macro.domContainer(UListElement, 'componenets'))
abstract ListCollection (UListElement) to UListElement{
    public function addItem(value:ListCollectionItem):Void this.appendChild(value);
}

@:forward
@:build(model.macro.Macro.domContainer(LIElement, 'componenets-item'))
abstract ListCollectionItem(LIElement) to LIElement{

    public function setSecondaryContent(secondary:Element):Void {
        if (new JQuery(this).has('.' + secondaryContent).length == 0) {
            var div:DivElement = document.createDivElement();
            div.innerHTML = this.innerHTML;
            secondary.classList.add(secondaryContent);
            div.appendChild(secondary);
            this.innerHTML = div.outerHTML;
        }
    }
}

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'componenets'))
abstract AnchorCollection (DivElement) to DivElement{
    public function addItem(value:AnchorCollectionItem):Void this.appendChild(value);
}

@:forward
@:build(model.macro.Macro.domContainer(AnchorElement, 'componenets-item'))
abstract AnchorCollectionItem(AnchorElement) to AnchorElement{}


//TODO ICON
typedef IconParams = {
icon:Icons,
?direction:model.Css.Direction
}
@:forward
@:build(model.macro.Macro.domContainer(i, 'material-icons','right'))
abstract Icon(Element) to Element{

    public inline function changeIcon(icon:Icons):Void {
        this.innerText = icon;
    }
}

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'container'))
abstract Container(DivElement) to DivElement{}

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'row'))
abstract Row(DivElement) to DivElement{}

@:forward
@:build(model.macro.Macro.domContainer(DivElement, 'col'))
abstract Col(DivElement) to DivElement{}