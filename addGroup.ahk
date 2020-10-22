;
; Purpose - Adds eggs to a specific control group.
; Usage - First, move your cursor to the egg group.
;       - To add to control group '1', you hold down 1 key and press XButton2.
;       - To add to control group '2', you hold down 2 key and press XButton2.
;       - etc.
; TODO - Main issue is that we can't assume the user will hold down 1/2/3.
;      - This will un-focus the selected larva + eggs. :(

XButton2::
    ; First grab our control group.
    ControlGroup1 := GetKeyState("1")
    ControlGroup2 := GetKeyState("2")
    ControlGroup3 := GetKeyState("3")
    ControlGroupKey := ""
    if (ControlGroup1)
        ControlGroupKey := "1"
    if (ControlGroup2)
        ControlGroupKey := "2"
    if (ControlGroup3)
        ControlGroupKey := "3"
    if (ControlGroupKey == "")
        Return

    ; So now we control-click on the egg at the current cursor position.
    Send {LControl down}
    Click
    Send {LControl up}

    ; The current selection is now just the correct eggs, so how add them to the
    ; group by sending shift + ControlGroupKey
    Send +{%ControlGroupKey%}

    Return
