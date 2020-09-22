package model.jquery;
import FormSelect.FormSelectOptions;
import Timepicker.TimepickerOptions;
import DatePicker.DatepickerOptions;
import Chips.ChipsOptions;
import Autocomplete.AutocompleteOptions;
import Tooltip.TooltipOptions;
import Tabs.TabsOptions;
import Sidenav.SidenavOptions;
import ScrollSpy.ScrollSpyOptions;
import Pushpin.PushpinOptions;
import Parallax.ParallaxOptions;
import Modal.ModalOptions;
import Dropdown.DropdownOptions;
import Collapsible.CollapsibleOptions;
import Carousel.CarouselOptions;
import Buttons.FloatingActionButtonOptions;
extern class Plugin {
    static inline function carousel( j:js.jquery.JQuery, ?arg:CarouselOptions ):Dynamic {
        return untyped j.carousel(arg);
    }
    static inline function collapsible( j:js.jquery.JQuery, ?arg:CollapsibleOptions ):Dynamic {
        return untyped j.collapsible(arg);
    }
    static inline function dropdown( j:js.jquery.JQuery, ?arg:DropdownOptions ):Dynamic {
        return untyped j.dropdown(arg);
    }
    static inline function modal( j:js.jquery.JQuery, ?arg:ModalOptions ):Dynamic {
        return untyped j.modal(arg);
    }
    static inline function parallax( j:js.jquery.JQuery, ?arg:ParallaxOptions ):Dynamic {
        return untyped j.parallax(arg);
    }
    static inline function pushpin( j:js.jquery.JQuery, ?arg:PushpinOptions ):Dynamic {
        return untyped j.pushpin(arg);
    }
    static inline function scrollSpy( j:js.jquery.JQuery, ?arg:ScrollSpyOptions ):Dynamic {
        return untyped j.scrollSpy(arg);
    }
    static inline function sidenav( j:js.jquery.JQuery, ?arg:SidenavOptions ):Dynamic {
        return untyped j.sidenav(arg);
    }
    static inline function tabs( j:js.jquery.JQuery, ?arg:TabsOptions):Dynamic {
        return untyped j.tabs(arg);
    }
    static inline function tooltip( j:js.jquery.JQuery, ?arg:TooltipOptions ):Dynamic {
        return untyped j.tooltip(arg);
    }
    static inline function autocomplete( j:js.jquery.JQuery, ?arg:AutocompleteOptions ):Dynamic {
        return untyped j.autocomplete(arg);
    }
    static inline function chips( j:js.jquery.JQuery, ?arg:ChipsOptions ):Dynamic {
        return untyped j.chips(arg);
    }
    static inline function datepicker( j:js.jquery.JQuery, ?arg:DatepickerOptions ):Dynamic {
        return untyped j.datepicker(arg);
    }
    static inline function timepicker( j:js.jquery.JQuery, ?arg:TimepickerOptions ):Dynamic {
        return untyped j.timepicker(arg);
    }
    static inline function formSelect( j:js.jquery.JQuery, ?arg:FormSelectOptions ):Dynamic {
        return untyped j.formSelect(arg);
    }
    static inline function floatingActionButton( j:js.jquery.JQuery, ?arg:FloatingActionButtonOptions ):Dynamic {
        return untyped j.floatingActionButton(arg);
    }
}