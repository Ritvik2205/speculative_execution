.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
xor dil, al
jmp .bb_0.1
.bb_0.1:
test bl, -14
xor cl, 24
test dil, -51
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
xor sil, 27
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
xor al, 55
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
