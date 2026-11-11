.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
test edi, -1252846009
test al, 127
xor rdx, -59
xor dl, -19
test esi, 1857129931
test rsi, 71
and bl, 68
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
or al, -75
xor al, -19
or al, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
