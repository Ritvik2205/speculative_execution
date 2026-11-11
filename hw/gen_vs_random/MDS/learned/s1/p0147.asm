.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -46
btr dx, di
or bl, 13
jmp .bb_0.1
.bb_0.1:
test eax, 1287331633
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and bl, 68
and al, 106
btr esi, edx
jmp .bb_0.2
.bb_0.2:
test sil, bl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and eax, 943733866
xor ax, -16696
xor sil, cl
xor cl, sil
or rcx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
