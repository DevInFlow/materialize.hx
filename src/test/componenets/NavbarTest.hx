package test.componenets;
import js.html.LIElement;
import test.base.BaseTest;
import model.Components.NavMobile;
import model.Components.Breadcrumb;
import model.Components.BreadcrumbContainer;
import model.Css.Grid;
import model.Components.NavWrapper;
import model.Components.Nav;
import js.Browser;
import js.html.Element;
import model.Components.BrandLogo;
import model.Components.Col;
import model.Components.Row;
import model.Components.Container;
class NavbarTest extends BaseTest {
    public function new(container:Container) {
        super(container);

        var row:Row = new Row();
        var col:Col = new Col();
        col.classList.add(Grid.s12);


        var brandLogo:BrandLogo = new BrandLogo();
        brandLogo.textContent = "Logo";
        brandLogo.setDirection(model.Css.Direction.right);


        var nav:Nav = new Nav();
        var wrapper:NavWrapper = new NavWrapper();

        var navMobile:NavMobile = new NavMobile();
        navMobile.setDirection(model.Css.Direction.left);
        wrapper.appendChild(navMobile);
        wrapper.appendChild(brandLogo);

        var listItem:LIElement;
        for (i in 0...3) {
            listItem = Browser.document.createLIElement();
            listItem.innerHTML = '<a href="#">Sass ${i + 1}</a>';
            navMobile.appendChild(listItem);
        }

        nav.appendChild(wrapper);
        col.appendChild(nav);
        row.appendChild(col);

        this.container.appendChild(row);
    }
}
