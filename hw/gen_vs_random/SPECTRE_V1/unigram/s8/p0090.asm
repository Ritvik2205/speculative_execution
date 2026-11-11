.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, rdi
lea cx, qword ptr [rdx]
neg rcx
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
dec bl
or ebx, -124
not cl
add al, -47
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
lea si, qword ptr [rcx + rdi + 83]
not ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 47
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 20
btr ax, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
