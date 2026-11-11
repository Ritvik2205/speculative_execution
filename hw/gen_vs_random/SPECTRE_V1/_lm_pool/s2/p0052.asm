.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .exit_0
.bb_0.2:
test cl, -24
sub bl, dil
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
lea cx, qword ptr [rdx + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
sbb al, 49
cmp sil, dil
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
add bx, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
