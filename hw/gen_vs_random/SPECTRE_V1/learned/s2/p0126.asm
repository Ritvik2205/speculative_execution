.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmp ecx, 45
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
sub al, cl
or al, 100
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 15
sbb cl, 105
xor eax, 55
sbb dl, bl
sub cx, 61
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
