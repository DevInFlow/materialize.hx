package model;

import js.Browser.document;
import js.html.*;
import js.jquery.JQuery;
import model.Css.Color;
import model.Css.Componenets;
import model.Css.Icons;
//BREADCRUMB
@:forward
abstract Breadcrumb (DivElement) to DivElement {
    public inline function new() {
        this = cast js.Browser.document.createDivElement();
        this.classList.add(wavesEffect, wavesLight, btn);
    }

    public function addItem(value:AnchorElement):Void {
        value.classList.add(Componenets.breadcrumb);
        this.appendChild(value);
    }
}

//BUTTONS

@:forward
abstract Raised (AnchorElement) to AnchorElement {
    public inline function new() {
        this = cast document.createAnchorElement();
        this.classList.add(wavesEffect, wavesLight, btn);
    }
}

@:forward
abstract Floating (AnchorElement) to AnchorElement {
    public inline function new() {
        this = cast document.createAnchorElement();
        this.classList.add(btnFloating, btnLarge, wavesEffect, wavesLight, red);
    }
}

@:forward
abstract SubmitButton (ButtonElement) to ButtonElement {
    public inline function new() {
        this = cast document.createButtonElement();
        this.classList.add(btn, wavesEffect, wavesLight);
        this.type = 'submit';
        this.name = 'action';
    }
}

@:forward
abstract LargeButton (AnchorElement) to AnchorElement {
    public inline function new() {
        this = cast document.createAnchorElement();
        this.classList.add(wavesEffect, wavesLight, btnLarge);
    }
}

@:forward
abstract SmallButton (AnchorElement) to AnchorElement {
    public inline function new() {
        this = cast document.createAnchorElement();
        this.classList.add(wavesEffect, wavesLight, btnSmall);
    }
}

//CARDS
@:forward
abstract Card (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(card);
    }
}

@:forward
abstract CardContent (DivElement) to DivElement {
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(cardContent);
    }
}

@:forward
abstract CardTitle (SpanElement) to SpanElement {
    public inline function new() {
        this = cast document.createSpanElement();
        this.classList.add(cardTitle);
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
    public inline function new() {
        this = cast document.createDivElement();
        this.classList.add(cardImage);
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



//COLLECTIONS
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




//ICON
@:forward
abstract Icon(Element) to Element{
    public inline function new(?icon:Icons):Void {
        this = cast js.Browser.document.createElement('i');
        this.classList.add(Componenets.materialIcons);
        if (icon != null) this.innerText = icon;
    }

    public inline function changeIcon(icon:Icons):Void {
        this.innerText = icon;
    }
}


