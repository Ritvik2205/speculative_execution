.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
cbw
or cl, -78
jmp .bb_0.2
.bb_0.2:
add cl, 42 # instrumentation
lea eax, qword ptr [rcx + rax]
and al, -68
btc ax, si
sub rbx, 26
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
cmovnp dx, ax
or dl, -67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
