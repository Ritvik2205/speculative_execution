.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 93
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
add al, -80
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
sub al, 9
add bl, 68
jmp .bb_0.1
.bb_0.1:
and dl, 84 # instrumentation
cmovle di, si
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
