; args
; many_arguments(long long, long long, long long, long long, long long, long long)

section .text
global many_arguments

many_arguments:
    push rbp
    mov rbp, rsp
    push r10

    mov r10, [rbp - 8]

    pop r10
    mov rsp, rbp
    pop rbp
    ret
