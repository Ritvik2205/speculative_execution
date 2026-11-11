.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
xor al, -19
add cl, sil
cmovbe di, bx
adc cl, -81
setns cl
cmp dl, sil
sbb al, cl
setz cl
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
