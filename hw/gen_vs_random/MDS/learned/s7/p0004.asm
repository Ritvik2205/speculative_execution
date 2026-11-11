.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
or eax, ecx
test sil, 17
and di, 91
xor dil, cl
test al, dil
and ax, -12519
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
test al, -81
xor sil, 110
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
xor ax, 31969
or al, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
