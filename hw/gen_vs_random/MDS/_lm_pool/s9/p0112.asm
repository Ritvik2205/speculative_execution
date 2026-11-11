.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
xor cx, -18
xor ax, -6793
or al, bl
xor ax, 31969
and edi, 23
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
or sil, -78
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
xor bl, -88
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
test rax, -2052112368
test ax, 4430
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
