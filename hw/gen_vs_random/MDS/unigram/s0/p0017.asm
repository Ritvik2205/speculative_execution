.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdx], dx
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and cl, -44 # instrumentation
cmovno rcx, rsi
and cl, 126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
cmovnbe rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and edi, edi
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
test esi, 425331143
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
or sil, -78
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
test ebx, -2015966884
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
