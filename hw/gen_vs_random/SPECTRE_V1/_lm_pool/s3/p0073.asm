.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, ax
test dl, -105
xor cl, dil
lea rax, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 43
lea rdi, qword ptr [rdx + rax + 37]
add al, -65
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
test bl, -8
sbb ecx, 69
and sil, -55
sbb esi, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
