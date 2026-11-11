.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor al, -74
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 55
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
cmp edx, 44
add dil, dl
lea ax, qword ptr [rbx + rdx]
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor al, dl
lea rdx, qword ptr [rbx + rax + 3]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
