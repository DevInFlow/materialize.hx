package test;
import test.collection.CardTest;
import test.collection.NavbarTest;
import test.collection.BreadcrumbTest;
import test.collection.ButtonTest;
import js.Browser;
import js.jquery.JQuery;
import model.Containers.Container;
import test.collection.CollectionTest;
using js.jquery.Plugin;
class Test {
    public static function main() new Test();

    public function new() {
        new JQuery(Browser.document).ready(function() {

            M.AutoInit();

            var container:Container = new Container();

            new CollectionTest(container);
            new ButtonTest(container);
            new BreadcrumbTest(container);
            new NavbarTest(container);
            new CardTest(container);

            Browser.document.body.appendChild(container);
        });
    }
}