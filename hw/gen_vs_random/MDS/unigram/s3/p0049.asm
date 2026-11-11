.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, -72
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
or al, 74
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
cmovbe eax, ecx
and cl, bl
btr edi, esi
cmovnp ax, cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 76
xor rbx, 89
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
or si, 94
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 67
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
