.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
bts ecx, ecx
btc si, dx
xor dl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 18
cmovnp rdx, rdx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
or ecx, 82
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
xor esi, edx
btc rsi, 80
or ax, 16560
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
