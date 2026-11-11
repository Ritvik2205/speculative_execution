.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ecx, edi
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
cmovb rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and bl, -13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
or rsi, rdi
bt eax, eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 86
cmovz rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
btr ebx, eax
and di, 9
cmovo eax, ecx
bts edi, edx
btr si, 99
and di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
