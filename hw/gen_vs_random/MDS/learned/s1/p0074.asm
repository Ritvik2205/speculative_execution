.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, si
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
test esi, 425331143
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor dx, 37
xor ax, -1005
or sil, -78
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and sil, al
test dil, al
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
