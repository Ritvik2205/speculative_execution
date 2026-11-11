.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb edx, esi
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
cmp eax, 692647572
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 55
lea si, qword ptr [rax + rbx]
sbb sil, cl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
