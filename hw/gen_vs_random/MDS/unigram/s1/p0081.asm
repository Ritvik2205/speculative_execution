.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rdi, rbx
cmovno ecx, eax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
cmovnp rcx, rsi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
xor cl, 55
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rdx, rbx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 96
test sil, cl
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
bts rcx, rbx
and bl, dil
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
