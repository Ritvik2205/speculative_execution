.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 43
or al, bl
xor al, 9
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
bt rcx, 31
jmp .bb_0.1
.bb_0.1:
test bl, -14
sbb cl, 83
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor sil, -15
xor al, dil
xor dil, -70
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
