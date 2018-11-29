package test;
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

            Browser.document.body.appendChild(container);
        });
    }
}