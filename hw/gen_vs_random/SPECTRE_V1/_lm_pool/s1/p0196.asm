.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 87
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, cl
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
sub al, bl
and bl, dil
sbb ebx, 99
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
sbb esi, 42
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 40
and cx, 19
bts bx, 73
or cl, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
