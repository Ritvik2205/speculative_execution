.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rsi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
or bl, -5
not al
add al, 74
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
test edx, -541774418
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
lea si, qword ptr [rcx + rdx + 85]
sub al, sil
test ax, 22956
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
