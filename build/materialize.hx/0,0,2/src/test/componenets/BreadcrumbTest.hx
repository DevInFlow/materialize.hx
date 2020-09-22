package test.componenets;
import js.Browser;
import js.html.Element;
import model.Components.BrandLogo;
import model.Components.Breadcrumb;
import model.Components.BreadcrumbContainer;
import model.Components.Nav;
import model.Components.NavWrapper;
import model.Components.Container;
import test.base.BaseTest;
class BreadcrumbTest extends BaseTest {
    public function new(container:Container) {
        super(container);
        var brandLogo:BrandLogo = new BrandLogo({text:"Logo", direction:model.Css.Direction.right});

        var headerh3:Element = Browser.document.createElement('h3');
        headerh3.classList.add('header');
        headerh3.innerText = "Basic";

        var breadcrumbContainer:BreadcrumbContainer = new BreadcrumbContainer();
        var wrapper:NavWrapper = new NavWrapper({elements:[breadcrumbContainer]});
        var nav:Nav = new Nav({elements:[wrapper]});

        var breadcrumb:Breadcrumb;
        for (i in 0...3) {
            breadcrumb = new Breadcrumb();
            breadcrumb.textContent = '${i + 1} bread';
            breadcrumbContainer.appendChild(breadcrumb);
        }

        this.col.appendChild(headerh3);
        this.col.appendChild(nav);
    }
}
