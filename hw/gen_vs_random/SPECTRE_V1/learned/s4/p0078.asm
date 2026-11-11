.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
test al, -71
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
adc bl, 102
adc al, dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, bl
sub bl, dil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
