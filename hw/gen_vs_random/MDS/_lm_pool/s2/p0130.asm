.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
or cl, dil
not sil
jmp .bb_0.1
.bb_0.1:
or sil, al
test bl, dil
or dil, cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test cl, cl
xor dl, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
test al, 91
btr si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
