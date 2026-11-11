.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test di, 64
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
sub al, cl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and cl, -57
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and dil, 98
cmp bl, -114
sub sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
