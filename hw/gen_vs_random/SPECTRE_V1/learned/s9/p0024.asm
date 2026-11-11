.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test bl, dil
or eax, 1276549484
xor al, bl
or dl, sil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
test dil, -116
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 55
cmp al, 53
jmp .bb_0.3
.bb_0.3:
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
