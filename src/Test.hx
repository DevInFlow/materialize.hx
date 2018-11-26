package ;
import js.Browser;
class Test {
    public static function main() {
        Modal.init(Browser.document.querySelectorAll('.modal'));
        Browser.console.log(Browser.document.getElementById("modal"));
        Browser.console.log(Modal.getInstance(Browser.document.getElementById("modal")));
        Modal.getInstance(Browser.document.getElementById("modal")).open();
    }
}
