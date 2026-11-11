.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and dl, 13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
xor dl, -59
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 51
cmovb bx, dx
or rsi, 77
or dl, cl
and dl, -24 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or esi, -110
and al, -83 # instrumentation
cmovnp rbx, rsi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
or rbx, -72
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
cmovnp edx, ecx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and cl, 112 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
