.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
xor sil, 94
jmp .bb_0.1
.bb_0.1:
test dl, dil
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 80
or dl, dl
and cl, bl
or cl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xor al, 122
xor di, 40
or di, 76
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
