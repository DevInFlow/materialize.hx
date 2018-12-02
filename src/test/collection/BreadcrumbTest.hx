package test.collection;
import js.Browser;
import js.html.Element;
import model.Components.BrandLogo;
import model.Components.Breadcrumb;
import model.Components.BreadcrumbContainer;
import model.Components.Nav;
import model.Components.NavWrapper;
import model.Containers.Container;
import test.base.BaseTest;
class BreadcrumbTest extends BaseTest {
    public function new(container:Container) {
        super(container);
        var brandLogo:BrandLogo = new BrandLogo();
        brandLogo.textContent = "Logo";
        brandLogo.setDirection(model.Css.Direction.right);


        var headerh3:Element = Browser.document.createElement('h3');
        headerh3.classList.add('header');
        headerh3.innerText = "Basic";

        var nav:Nav = new Nav();
        var wrapper:NavWrapper = new NavWrapper();


        var breadcrumbContainer:BreadcrumbContainer = new BreadcrumbContainer();
        wrapper.appendChild(breadcrumbContainer);
        var breadcrumb:Breadcrumb;
        for (i in 0...3) {
            breadcrumb = new Breadcrumb();
            breadcrumb.textContent = '${i + 1} bread';
            breadcrumbContainer.appendChild(breadcrumb);
        }

        nav.appendChild(wrapper);
        this.col.appendChild(headerh3);
        this.col.appendChild(nav);
    }
}
