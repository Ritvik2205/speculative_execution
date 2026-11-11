.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and dl, -49
add al, sil
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 14
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 87
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
