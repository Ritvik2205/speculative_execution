.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
test al, -59
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
cmovno edx, edi
and eax, -2116875023
xor cl, cl
xchg dx, si
mul rdi
xchg si, dx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 32 # instrumentation
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
or edi, edx
cmovnbe esi, ebx
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
bts eax, 103
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
bt eax, eax
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
and ax, -30938
and bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
