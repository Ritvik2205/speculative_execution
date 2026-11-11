.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], -12722
lea ax, qword ptr [rdx + rbx]
lea rsi, qword ptr [rsi + rax]
add sil, -76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
cmovnle si, di
and rax, rdx
sub rdx, rdx
sets dl
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
cmovb ax, bx
adc ebx, 15
or dl, 41
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
