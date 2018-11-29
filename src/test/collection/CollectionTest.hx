package test.collection;
import js.Browser;
import js.html.AnchorElement;
import model.Components.AnchorCollection;
import model.Components.AnchorCollectionItem;
import model.Components.Icon;
import model.Components.ListCollection;
import model.Components.ListCollectionItem;
import model.Containers.Container;
import model.Css.Componenets;
import model.Css.Icons;
import test.base.BaseTest;
class CollectionTest extends BaseTest {

    public function new(container:Container) {
        super(container);

        this.simpleCollection();
        this.linkCollection();
        this.avatarCollection();


    }

    private function simpleCollection():Void {
        var listItem:ListCollectionItem;
        var listCollection:ListCollection = new ListCollection();
        listCollection.classList.add(withHeader);
        for (i in 0...5) {
            listItem = new ListCollectionItem();
            listItem.textContent = 'Alvin';
            if (i == 0) {
                listItem.classList.add(collectionHeader);
                listItem.innerHTML = "<h4>First Names</h4>";
            }
            else {

                var anchor:AnchorElement = Browser.document.createAnchorElement();
                anchor.appendChild(new Icon(Icons.SEND));
                anchor.href = "http://www.devinflow.hu";

                listItem.setSecondaryContent(anchor);
            }
            listCollection.addItem(listItem);
        }

        this.appendChild(listCollection);

    }

    private function linkCollection():Void {
        var anchorCollection:AnchorCollection = new AnchorCollection();
        var anchorItem:AnchorCollectionItem;
        for (i in 0...5) {
            anchorItem = new AnchorCollectionItem();
            anchorItem.href = "http://www.devinflow.hu";
            anchorItem.text = 'Alvin';
            anchorItem.target = '_blank';

            anchorCollection.addItem(anchorItem);
        }
        this.appendChild(anchorCollection);
    }

    private function avatarCollection():Void {
        var avatarCollection:ListCollection = new ListCollection();
        var avatarItem:ListCollectionItem;
        for (i in 0...5) {
            avatarItem = new ListCollectionItem();
            avatarItem.classList.add(avatar);
            avatarItem.innerHTML = '<img src="https://materializecss.com/images/yuna.jpg" alt="" class="circle">
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>';

            var anchor:AnchorElement = Browser.document.createAnchorElement();
            anchor.appendChild(new Icon(Icons.GRADE));
            anchor.href = "http://www.devinflow.hu";

            avatarItem.setSecondaryContent(anchor);

            avatarCollection.addItem(avatarItem);
        }
        this.appendChild(avatarCollection);

    }
}
