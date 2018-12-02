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

@:build(model.macro.Macro.direction())
@:forward
abstract BrandLogo(AnchorElement) to AnchorElement{
    public inline function new() {
        this = document.createAnchorElement();
        this.classList.add(brandLogo);
    }

}

@:forward
abstract NavWrapper(DivElement) to DivElement{
    public inline function new() {
        this = document.createDivElement();
        this.classList.add(navWrapper);
    }

}
@:forward
abstract Nav(Element) to Element{
    public inline function new() {
        this = document.createElement('nav');
    }

}
@:build(model.macro.Macro.direction())
@:forward
abstract NavMobile(UListElement) to UListElement{
    public inline function new() {
        this = document.createUListElement();
    }

}
//TODO BREADCRUMB
@:forward
abstract BreadcrumbContainer (DivElement) to DivElement {
    public inline function new() {
        this = cast js.Browser.document.createDivElement();
        this.classList.add(col);
    }

    public function addItem(breadcrumb:Breadcrumb):Void {
        this.appendChild(breadcrumb);
    }

    public function removeItem(breadcrumb:Breadcrumb):Void {
        this.removeChild(breadcrumb);
    }
}

@:forward
abstract Breadcrumb (AnchorElement) to AnchorElement{
    public inline function new() {
        this = cast js.Browser.document.createAnchorElement();
        this.classList.add(breadcrumb);
    }
}

//TODO BUTTONS

typedef ButtonProperties = {
?type:Buttons
}

@:build(model.macro.Macro.iconize())
@:forward
abstract RaisedButton (AnchorElement) to AnchorElement{
    public inline function new(?properties:ButtonProperties) {
        this = cast document.createAnchorElement();
        this.classList.add(wavesEffect, wavesLight, btn);

        if (properties != null)
            this.classList.add((Reflect.hasField(properties, 'type')) ? properties.type : btn);
        else
            this.classList.add(btn);
    }
}
@:build(model.macro.Macro.iconize())
@:forward
abstract FloatingButton (AnchorElement) to AnchorElement {
    public inline function new(?properties:ButtonProperties) {
        this = cast document.createAnchorElement();
        this.classList.add(btnFloating, wavesEffect, wavesLight, red);
        if (properties != null)
            this.classList.add((Reflect.hasField(properties, 'type')) ? properties.type : btn);
        else
            this.classList.add(btn);
    }
}


@:build(model.macro.Macro.iconize())
@:forward
abstract SubmitButton (ButtonElement) to ButtonElement {
    public inline function new(?properties:ButtonProperties) {
        this = cast document.createButtonElement();

        this.classList.add(wavesEffect, wavesLight);
        this.type = 'submit';
        this.name = 'action';
        if (properties != null)
            this.classList.add((Reflect.hasField(properties, 'type')) ? properties.type : btn);
        else
            this.classList.add(btn);
    }
}

//TODO CARDS

@:forward
abstract Card (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();


        this.classList.add(card);
    }
}

@:forward
abstract CardStickyAction (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(card, stickyAction);
    }
}

@:genericBuild(model.macro.Macro.domContainer(DivElement))
@:forward
abstract CardContent (DivElement) to DivElement {
//    public inline function new(?content:EitherType<Array<Element>, String>) {
//        var i = model.macro.Macro.construct(DivElement);
//        this = cast document.createDivElement();
//        this.classList.add(cardContent);
//
//
//        if (content != null) {
//            if (Std.is(content, Array)) {
////                for
//                trace('it is array') ;
//            }
//            else {
//
//                trace('it is string');
//            }
//
//
////            switch()trace()
//        }
//    }
}

@:forward
abstract CardTitle (SpanElement) to SpanElement {
    public inline function new(?text:String) {
        this = cast document.createSpanElement();
        this.classList.add(cardTitle);
        if (text != null) this.innerHTML = text;
    }

    public function appendHtml(html:String):Void {
        this.innerHTML += html;
    }
}

@:forward
abstract CardAction (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(cardAction);
    }
}

@:forward
abstract CardImage (DivElement) to DivElement {
    public inline function new(src:String) {
        this = cast document.createDivElement();
        this.classList.add(cardImage, wavesEffect, wavesLight, wavesBlock);
        var img:ImageElement = document.createImageElement();
        img.classList.add(activator);
        img.src = src;
        this.appendChild(img);
    }
}

@:forward
abstract CardStacked (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(cardStacked);
    }
}

@:forward
abstract CardReveal (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(cardReveal);
    }
}

@:forward
abstract CardTabs (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(cardTabs);
    }
}

@:forward
abstract CardPanel (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(cardPanel);
    }
}

//TODO TABS

@:forward
abstract Tabs (UListElement) to UListElement{
    public inline function new() {
        this = document.createUListElement();
        this.classList.add(tabs);
    }

    public function appendTab(tab:Tab):Void {
        this.appendChild(tab);
    }

    public function removeTab(tab:Tab):Void {
        this.removeChild(tab);
    }
}

@:forward
abstract Tab (LIElement) to LIElement{
    public inline function new() {
        this = document.createLIElement();
        this.classList.add(tab);
    }
}


//TODO COLLECTIONS
@:forward
abstract ListCollection (UListElement) to UListElement{
    public inline function new() {
        this = document.createUListElement();
        this.classList.add(Componenets.collection);
    }

    public function addItem(value:ListCollectionItem):Void {

        value.classList.add(Componenets.collectionItem);
        this.appendChild(value);
    }
}

@:forward
abstract ListCollectionItem(LIElement) to LIElement{
    public inline function new():Void {
        this = document.createLIElement();
        this.classList.add(Componenets.collectionItem);

    }

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
abstract AnchorCollection (DivElement) to DivElement{
    public inline function new() {
        this = document.createDivElement();
        this.classList.add(Componenets.collection);
    }

    public function addItem(value:AnchorCollectionItem):Void {
        value.classList.add(Componenets.collectionItem);
        this.appendChild(value);
    }
}

@:forward
abstract AnchorCollectionItem(AnchorElement) to AnchorElement{
    public inline function new():Void {
        this = document.createAnchorElement();
        this.classList.add(Componenets.collectionItem);
    }
}


//TODO ICON
typedef IconParams = {
icon:Icons,
?direction:model.Css.Direction
}
@:build(model.macro.Macro.direction())
@:forward
abstract Icon(Element) to Element{
    public inline function new(params:IconParams):Void {
        this = cast js.Browser.document.createElement('i');
        this.classList.add(Componenets.materialIcons);
        if (Reflect.hasField(params, 'direction'))
            setDirection(params.direction);
        else
            setDirection(model.Css.Direction.right);


        this.innerText = params.icon;
    }

    public inline function changeIcon(icon:Icons):Void {
        this.innerText = icon;
    }
}

