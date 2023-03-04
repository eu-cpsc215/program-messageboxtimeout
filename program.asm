extrn ExitProcess : proc        ; Declare external function ExitProcess

.DATA                           ; Directive: enter .data section

    ; YOUR DATA HERE

.CODE                           ; Directive: enter .code section

; =========================================================
_main PROC                      ; Directive: Begin function labeled `_main`

    ; YOUR PROLOGUE HERE

    ; -------------------- /\ PROLOGUE /\ --------------------


    ; YOUR PROGRAM CODE HERE


    ; -------------------- \/ EPILOGUE \/ --------------------

    ; No epilogue is needed since we're just going to terminate the process

    xor rcx, rcx                ; Set first parameter to 0
    call ExitProcess            ; Use Windows API to exit the process

_main ENDP                      ; Directive: End function labeled `_main`

END                             ; Directive: End of module
