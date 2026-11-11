.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
sbb bl, cl
sub al, bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
sbb cl, dl
sbb sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
