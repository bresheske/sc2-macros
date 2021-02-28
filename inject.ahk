; Purpose - Just a quick "back-space method" inject script
;         - Assumes all hatches are on 4, and inject queens are on 5.

XButton1::
    Send 5

    Send {Space}v
    Click
    Send {Space}v
    Click
    Send {Space}v
    Click
    Send {Space}v
    Click
    Send {Space}v
    Click
    Send {Space}v
    Click
    Send {Space}v
    Click

    ; Update 2/28/2021 - So walking queens around is super normal, but we still want
    ;  to make sure we have queens at each base while we're injecting.  Otherwise 
    ;  we'll be open to undefended harassment. So we'll still want to send the stop.
    Send s
    Send 11
    Return