.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dil
or dil, -113
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
lea bx, qword ptr [rbx + rsi]
cmovp bx, ax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 39
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 53
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and ax, di
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
bt dx, 132
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
