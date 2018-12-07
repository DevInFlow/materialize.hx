package test.componenets;

import js.html.ImageElement;
import model.Components.CardTabs;
import model.Components.CardStickyAction;
import model.Components.CardReveal;
import model.Components.CardStacked;
import model.Css.Icons;
import model.Components.Icon;
import model.Css.Componenets;
import model.Components.FloatingButton;
import model.Components.CardImage;
import model.Css.Grid;
import model.Components.Col;
import model.Components.CardAction;
import js.Browser;
import js.html.ParagraphElement;
import model.Components.CardTitle;
import model.Css.TextColor;
import model.Components.CardContent;
import model.Css.Shade;
import model.Css.TextShade;
import model.Css.Color;
import model.Components.Card;
import model.Components.Container;
import test.base.BaseTest;
class CardTest extends BaseTest {
    public function new(container:Container) {
        super(container);
        this.basicCard();
        this.imageCard();
        this.fabsInCard();
        this.horizontalCard();
        this.revealCard();
        this.revealCardStickyAction();
        this.cardTabs();
    }

    private function basicCard():Void {
        var innerCol:Col = new Col({classList:[Grid.s12, Grid.m4]});

        var card:Card = new Card({classList:[Color.blueGrey, Shade.darken1]});

        var cardContent:CardContent = new CardContent();
        cardContent.classList.add(TextColor.whiteText);
        var cardTitle:CardTitle = new CardTitle({text:"Card Title"});
        var paragraph:ParagraphElement = Browser.document.createParagraphElement();
        paragraph.textContent = 'I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.';

        var cardAction:CardAction = new CardAction({html:'<a href="#">666 is a link</a><a href="#">This is a link</a>'});


        cardContent.appendChild(cardTitle);
        cardContent.appendChild(paragraph);
        card.appendChild(cardContent);
        card.appendChild(cardAction);
        innerCol.appendChild(card);
        this.col.appendChild(innerCol);

    }

    private function imageCard():Void {
        var innerCol:Col = new Col({classList:[Grid.s12, Grid.m4]});

        var card:Card = new Card();
        var cardImage:CardImage = new CardImage({src:'https://materializecss.com/images/sample-1.jpg'});
        var cardTitle:CardTitle = new CardTitle({text:"Card Title"});
        var cardContent:CardContent = new CardContent({html:'<p>I am a very simple card. I a good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>'});
        var cardAction:CardAction = new CardAction({html:'<a href="#">This is a link</a>'});

        cardImage.appendChild(cardTitle);
        card.appendChild(cardImage);
        card.appendChild(cardContent);
        card.appendChild(cardAction);
        innerCol.appendChild(card);
        this.col.appendChild(innerCol);

    }

    private function fabsInCard():Void {
        var innerCol:Col = new Col();
        innerCol.classList.add(Grid.s12, Grid.m4);

        var card:Card = new Card();

        var cardTitle:CardTitle = new CardTitle({text:"Card Title"});
        var floatingButton:FloatingButton = new FloatingButton({icon:Icons.ADD, classList:[Componenets.halfwayFab]});

        var cardContent:CardContent = new CardContent({html:'<p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>'});


        var cardImage:CardImage = new CardImage({src:'https://materializecss.com/images/sample-1.jpg', elements:[cardTitle, floatingButton]});
        card.appendChild(cardImage);
        card.appendChild(cardContent);
        innerCol.appendChild(card);
        this.col.appendChild(innerCol);

    }

    private function horizontalCard():Void {

        var innerCol:Col = new Col();
        innerCol.classList.add(Grid.s12, Grid.m7);

        var card:Card = new Card();


        var cardImage:CardImage = new CardImage({src:'https://lorempixel.com/100/190/nature/6'});
        card.classList.add(Componenets.horizontal);

        var cardContent:CardContent = new CardContent();
        var cardStacked:CardStacked = new CardStacked();


        var paragraph:ParagraphElement = Browser.document.createParagraphElement();
        paragraph.innerText = 'I am a very simple card. I am good at containing small bits of information.';


        var cardAction:CardAction = new CardAction();
        cardAction.innerHTML = '<a href="#">This is a link</a>';

        cardStacked.appendChild(cardContent);
        cardStacked.appendChild(cardAction);
        cardContent.appendChild(paragraph);
        card.appendChild(cardImage);
        card.appendChild(cardStacked);
        innerCol.appendChild(card);
        this.col.appendChild(innerCol);

    }

    private function revealCard():Void {

        var cardImage:CardImage = new CardImage({src:'https://materializecss.com/images/office.jpg'});
        var cardTitle:CardTitle = new CardTitle({text:'Card Title',classList:[activator, grayText, textDarken4]});
        var cardContent:CardContent = new CardContent({elements:[cardTitle], html:'<p><a href="#">This is a link</a></p>'});
        var cardReveal:CardReveal = new CardReveal({elements:[new CardTitle({text:'Card Title', classList:[grayText, textDarken4], elements:[new Icon({icon:Icons.CLOSE})]})],html:"<p>Here is some more information about this product that is only revealed once clicked on.</p>"});
        var card:Card = new Card({elements:[cardImage, cardContent, cardReveal]});
        col.appendChild(new Col({elements:[card],classList:[Grid.s12, Grid.m5]}));
    }

    private function revealCardStickyAction():Void {
        var innerCol:Col = new Col();
        innerCol.classList.add(Grid.s12, Grid.m5);

        var card:CardStickyAction = new CardStickyAction();

        var cardAction:CardAction = new CardAction();
        var cardContent:CardContent = new CardContent();

        var cardImage:CardImage = new CardImage({src:'https://materializecss.com/images/office.jpg'});
        var cardTitle:CardTitle = new CardTitle({text:'Card Title666'});


        var cardReveal:CardReveal = new CardReveal();
        var revealTitle:CardTitle = new CardTitle({text:'Card Title'});
        var revealParagraph:ParagraphElement = Browser.document.createParagraphElement();

        revealTitle.classList.add(grayText, textDarken4);
        revealTitle.appendHtml(new Icon({icon:Icons.CLOSE}).outerHTML);
        revealParagraph.textContent = "Here is some more information about this product that is only revealed once clicked on.";


        cardTitle.classList.add(activator, grayText, textDarken4);


        var link:ParagraphElement = Browser.document.createParagraphElement();
        link.innerHTML = '<a href="#">This is a link</a>';

        var contentLinks:ParagraphElement = Browser.document.createParagraphElement();
        contentLinks.innerHTML = '<a href="#!">This is a link</a>';

        cardContent.appendChild(cardTitle);
        cardContent.appendChild(contentLinks);

        cardReveal.appendChild(revealTitle);
        cardReveal.appendChild(revealParagraph);

        cardAction.appendChild(link);

        card.appendChild(cardImage);
        card.appendChild(cardContent);
        card.appendChild(cardAction);
        card.appendChild(cardReveal);


        innerCol.appendChild(card);

        col.appendChild(innerCol);

    }

    private function cardTabs():Void {
        var card:Card = new Card();

//        var content:CardContent = new CardContent([Browser.document.createDivElement()]);
//        var content:CardContent = new CardContent("asdasd");
//        var tabs:CardTabs = new CardTabs();


    }
}
