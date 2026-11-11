.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
or al, -57
and ecx, 38
test cl, 97
jmp .bb_0.1
.bb_0.1:
cmp si, 37
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or edi, eax
jmp .bb_0.3
.bb_0.3:
test dil, -126
test sil, 29
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
