.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
or cl, dl
xor di, 93
and sil, -69
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and dil, 125
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 77
test bl, -114
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], esi
xor rcx, -2
and rax, 452940266
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
