.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
lea rdi, qword ptr [rbx + rcx]
btc ax, di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and al, -68
and dil, cl
sub al, -47
add al, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
