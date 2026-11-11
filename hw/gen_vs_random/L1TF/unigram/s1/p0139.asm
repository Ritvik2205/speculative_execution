.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -39
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
or dx, -126
lea rbx, qword ptr [rcx]
xchg dx, di
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 89
mul dx
jmp .bb_0.1
.bb_0.1:
add sil, cl
and ebx, edx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
add al, 65 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
add cl, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
lea rax, qword ptr [rbx + rdx]
or cl, cl
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 26
sub dx, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
