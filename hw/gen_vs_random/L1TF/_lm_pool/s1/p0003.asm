.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
sub bl, -96
xor cl, 89
add sil, -61
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 91
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
sbb cl, al
lea rbx, qword ptr [rax + rcx]
or cl, dil
xor ax, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
