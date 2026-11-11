.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 9
btc bx, dx
or edx, -1
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 42
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
and dx, di
and bl, dil
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
xor ebx, eax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 15
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
test dil, dil
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
