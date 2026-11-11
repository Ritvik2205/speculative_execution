.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
bt si, 23
and cl, -19
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor dl, dil
xor ax, -4010
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
