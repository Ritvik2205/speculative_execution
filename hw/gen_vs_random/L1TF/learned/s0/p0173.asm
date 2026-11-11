.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
sub al, -75
jmp .bb_0.1
.bb_0.1:
xchg dl, bl
jb .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
and sil, 93
and al, -68
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
