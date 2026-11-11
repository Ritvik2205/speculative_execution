.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 59
sub dl, dil
add dl, 47
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
sbb al, 49
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
sub ax, -16648
sbb dl, 127
lea ax, qword ptr [rdx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
