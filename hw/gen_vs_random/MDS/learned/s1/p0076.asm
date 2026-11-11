.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
bts rsi, rax
xor ax, 23633
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
bt di, si
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
or dil, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and sil, -56
and ax, 13090
test rax, -359674714
xor ax, -16696
xor dl, -19
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
