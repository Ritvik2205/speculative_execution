.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
sub dl, -12
xor cl, bl
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and dil, -93
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb esi, 94
or rsi, -14
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 12
lea rsi, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
