.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
xor dl, dil
or cl, dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 33
xor dl, dil
or dx, 55
jmp .bb_0.1
.bb_0.1:
sub dl, -49
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
test dl, -37
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rax, 1994547909
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
sub al, cl
xchg ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
