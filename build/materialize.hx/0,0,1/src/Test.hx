package ;
import js.jquery.JQuery;
import js.Browser;
using js.jquery.Plugin;
class test.Test {
    public static function main() {
        new JQuery(Browser.document).ready(function() {
//            M.AutoInit();
//            new JQuery('#autocomplete-input').autocomplete({
//                data: {
//                    "Apple": null,
//                    "Microsoft": null,
//                    "Google": 'https://cdn4.iconfinder.com/data/icons/new-google-logo-2015/400/new-google-favicon-512.png'
//                },
//            });
            Autocomplete.getInstance(Browser.document.getElementById("autocomplete-input")).updateData(
                {
                    "Apple": null,
                    "Microsoft": null,
                    "Google": 'https://cdn4.iconfinder.com/data/icons/Collections-google-logo-2015/400/Collections-google-favicon-512.png'
                });
        });
    }
}
