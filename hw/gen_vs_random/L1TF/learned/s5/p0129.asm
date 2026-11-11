.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
test dil, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
xor bl, -5
xor sil, 64
test dil, -126
test al, -84
sbb ebx, 9
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
