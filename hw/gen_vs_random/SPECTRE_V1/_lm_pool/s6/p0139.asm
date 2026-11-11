.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 94
adc bx, 17
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb cl, bl
sub dl, -48
lea ebx, qword ptr [rdx]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
test dil, -116
lea esi, qword ptr [rbx]
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
