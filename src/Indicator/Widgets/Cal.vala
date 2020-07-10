public class Niu.Widgets.CalWidget : Gtk.Box {
    private Gtk.Label cal_label;
    public string cal_str {
        set { cal_label.set_label ("%s".printf (value)); }
    }
    construct {
        cal_label = new Gtk.Label ("XXAXX");
        cal_label.width_chars = 7;
        var cal_style_context = cal_label.get_style_context ();
        cal_style_context.add_class (Gtk.STYLE_CLASS_DIM_LABEL);
        cal_style_context.add_class (Granite.STYLE_CLASS_H3_LABEL);
        this.margin = 6;
        this.set_tooltip_text (_("Current Date"));
        pack_start (cal_label);
    }
    public CalWidget () {
        orientation = Gtk.Orientation.HORIZONTAL;
    }
}
