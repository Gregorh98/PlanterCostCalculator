#############################################################################
# Generated by PAGE version 4.22
#  in conjunction with Tcl version 8.6
#  May 04, 2020 09:15:31 PM BST  platform: Windows NT
set vTcl(timestamp) ""


if {!$vTcl(borrow)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(active_menu_fg) #000000
}

#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top42
    global vTcl
    set base $vTcl(btop)
    if {$base == ""} {
        set base .top42
    }
    namespace eval ::widgets::$base {
        set dflt,origin 0
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top42 {base} {
    if {$base == ""} {
        set base .top42
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu {} -background {#d9d9d9} -highlightbackground {#d9d9d9} \
        -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 208x254+680+197
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 5764 1061
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Planter Price Calculator"
    vTcl:DefineAlias "$top" "topLevel" vTcl:Toplevel:WidgetProc "" 1
    labelframe $top.lab44 \
        -font TkDefaultFont -foreground black -text Dimensions \
        -background {#d9d9d9} -height 235 -highlightbackground {#d9d9d9} \
        -highlightcolor black -width 190 
    vTcl:DefineAlias "$top.lab44" "dimensionsFrame" vTcl:WidgetProc "topLevel" 1
    set site_3_0 $top.lab44
    entry $site_3_0.ent48 \
        -background white -disabledforeground {#a3a3a3} -font TkFixedFont \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent48" "lengthEntry" vTcl:WidgetProc "topLevel" 1
    entry $site_3_0.ent49 \
        -background white -disabledforeground {#a3a3a3} -font TkFixedFont \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent49" "heightEntry" vTcl:WidgetProc "topLevel" 1
    entry $site_3_0.ent50 \
        -background white -disabledforeground {#a3a3a3} -font TkFixedFont \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent50" "widthEntry" vTcl:WidgetProc "topLevel" 1
    button $site_3_0.but51 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text Submit 
    vTcl:DefineAlias "$site_3_0.but51" "submitButton" vTcl:WidgetProc "topLevel" 1
    label $site_3_0.lab52 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -text Length 
    vTcl:DefineAlias "$site_3_0.lab52" "lengthLabel" vTcl:WidgetProc "topLevel" 1
    label $site_3_0.lab53 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -text Height 
    vTcl:DefineAlias "$site_3_0.lab53" "heightLabel" vTcl:WidgetProc "topLevel" 1
    label $site_3_0.lab54 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -text Width 
    vTcl:DefineAlias "$site_3_0.lab54" "widthLabel" vTcl:WidgetProc "topLevel" 1
    label $site_3_0.lab43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -text {Markup %} 
    vTcl:DefineAlias "$site_3_0.lab43" "markupLabel" vTcl:WidgetProc "topLevel" 1
    entry $site_3_0.ent44 \
        -background white -disabledforeground {#a3a3a3} -font TkFixedFont \
        -foreground {#000000} -highlightbackground {#d9d9d9} \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black 
    vTcl:DefineAlias "$site_3_0.ent44" "markupEntry" vTcl:WidgetProc "topLevel" 1
    radiobutton $site_3_0.rad67 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -justify left \
        -text cm -value cm -variable measurementType 
    vTcl:DefineAlias "$site_3_0.rad67" "cmRadioButton" vTcl:WidgetProc "topLevel" 1
    radiobutton $site_3_0.rad68 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -justify left \
        -text Inches -value inches -variable measurementType 
    vTcl:DefineAlias "$site_3_0.rad68" "inchRadioButton" vTcl:WidgetProc "topLevel" 1
    radiobutton $site_3_0.rad69 \
        -activebackground {#ececec} -activeforeground {#000000} \
        -background {#d9d9d9} -disabledforeground {#a3a3a3} \
        -font TkDefaultFont -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -justify left \
        -text mm -value mm -variable measurementType 
    vTcl:DefineAlias "$site_3_0.rad69" "mmRadioButton" vTcl:WidgetProc "topLevel" 1
    place $site_3_0.ent48 \
        -in $site_3_0 -x 100 -y 30 -width 64 -relwidth 0 -height 20 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent49 \
        -in $site_3_0 -x 100 -y 90 -width 64 -relwidth 0 -height 20 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent50 \
        -in $site_3_0 -x 100 -y 60 -width 64 -relwidth 0 -height 20 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but51 \
        -in $site_3_0 -x 70 -y 200 -anchor nw -bordermode ignore 
    place $site_3_0.lab52 \
        -in $site_3_0 -x 20 -y 30 -anchor nw -bordermode ignore 
    place $site_3_0.lab53 \
        -in $site_3_0 -x 20 -y 90 -anchor nw -bordermode ignore 
    place $site_3_0.lab54 \
        -in $site_3_0 -x 20 -y 60 -anchor nw -bordermode ignore 
    place $site_3_0.lab43 \
        -in $site_3_0 -x 20 -y 120 -width 60 -relwidth 0 -height 21 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent44 \
        -in $site_3_0 -x 100 -y 120 -width 64 -relwidth 0 -height 20 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.rad67 \
        -in $site_3_0 -x 10 -y 160 -anchor nw -bordermode ignore 
    place $site_3_0.rad68 \
        -in $site_3_0 -x 60 -y 160 -anchor nw -bordermode ignore 
    place $site_3_0.rad69 \
        -in $site_3_0 -x 130 -y 160 -anchor nw -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab44 \
        -in $top -x 10 -y 10 -width 190 -relwidth 0 -height 235 -relheight 0 \
        -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top42 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

