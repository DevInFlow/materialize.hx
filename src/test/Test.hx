package test;
import test.componenets.CardTest;
import test.componenets.NavbarTest;
import test.componenets.BreadcrumbTest;
import test.componenets.ButtonTest;
import js.Browser;
import js.jquery.JQuery;
import model.Components.Container;
import test.componenets.CollectionTest;
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