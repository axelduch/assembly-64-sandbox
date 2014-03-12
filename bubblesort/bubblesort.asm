section .data

section .text
global bubblesort
; this function takes two parametes
; long long array (signed int 64 bit)
; int 32 length of the array
bubblesort:
    ;;;;;;;;;;;;
    ; ENTER
    ;;;;;;;;;;;;
    push rbp
    mov rbp, rsp
    push rbx
    push rax
    push r10
    push r9
    push r8
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; ENTRY POINT
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; address of array is stored in rdi due to C++ 64 bit call convention
    mov ecx, esi ; get length of array stored in esi
    xor rbx, rbx ; rbx = 0
    mov r8, rcx  ; for y we only loop from 0 to array length - 2 because we need to access index + 1 on each iteration
    dec r8
    for_x:
        for_y:
            mov rax, [rdi + 8 * rbx]    ; load array[y] into rax
            mov r9, [rdi + 8 * rbx + 8] ; load array[y + 1] into r9
            cmp rax, r9                 ; compare rax and r9
            cmova r10, rax              ; exchange r9 and rax if rax > r9
            cmova rax, r9               ; -
            cmova r9, r10               ; -
            mov [rdi + 8 * rbx], rax    ; put back rax into array[y]
            mov [rdi + 8 * rbx + 8], r9 ; put back r9 back into array[y  + 1]
            inc rbx     ; point rbx to next element
            cmp rbx, r8 ; compare rbx and r8
            jb  for_y   ; loop y while rbx < length - 2 that is why we increment before cmp
        xor rbx, rbx ; reset y loop variable to 0
        loop for_x  ; loop x while rcx > 0
    ;;;;;;;;;;;;
    ; LEAVE
    ;;;;;;;;;;;;
    pop r8
    pop r9
    pop r10
    pop rax
    pop rbx
    mov rsp, rbp
    pop rbp
    ret
