.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
lea ax, qword ptr [rbx + rdx + 32397]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -75
lea rdx, qword ptr [rdi + rcx + 59295]
sub al, dil
add sil, -68
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and dil, 98
and cl, 86
sub dl, -12
lea eax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
