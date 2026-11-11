.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, ax
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 16
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and cl, sil
sub al, -75
lea cx, qword ptr [rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
