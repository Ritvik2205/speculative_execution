.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rsi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
not di
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
xor dl, 71
inc eax
setnb dl
add bl, 73 # instrumentation
mov rcx, 59
cmovnle rcx, rax
jl .bb_0.1
jmp .exit_0
.bb_0.1:
imul eax, edx, 89
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
lea ebx, qword ptr [rsi + rsi + 38]
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 56
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
