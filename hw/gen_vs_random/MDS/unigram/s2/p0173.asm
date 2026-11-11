.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 22
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
or rax, rcx
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
cmovb ecx, esi
bt ebx, 107
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
cmovp ecx, ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 1
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
btr ax, 68
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
and bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
xor ecx, 25
and dil, -2 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
