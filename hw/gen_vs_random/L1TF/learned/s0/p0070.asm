.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, bx
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
adc bl, 86
test bl, 12
xor cl, 89
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
test ax, 636
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
