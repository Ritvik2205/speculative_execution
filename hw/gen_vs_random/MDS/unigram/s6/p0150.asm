.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdx, 20
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
not cl
cmovnp ebx, edx
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
not dl
bt rbx, 241
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
xor rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and al, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
cmovns eax, ebx
cmovno rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
