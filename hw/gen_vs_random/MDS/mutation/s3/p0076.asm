.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
btr bx, dx
btr edx, ebx
cmovnbe rcx, rdi
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
bts rcx, rbx
and cl, 18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and ecx, edx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and dl, -75 # instrumentation
cmovp edx, edx
or bl, 43
test cl, -18
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmovnz rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
