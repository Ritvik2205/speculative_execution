.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
mov bl, 35
and al, cl
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rcx, 94
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
bts ecx, 225
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
