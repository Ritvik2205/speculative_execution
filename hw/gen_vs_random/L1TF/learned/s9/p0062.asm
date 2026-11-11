.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
test al, -84
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 54
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
add sil, sil
or sil, dil
sbb al, -23
test dil, -126
xor ax, 30996
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
