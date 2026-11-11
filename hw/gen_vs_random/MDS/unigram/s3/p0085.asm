.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdx]
btr rax, 209
cmovbe edi, edi
or al, -17
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
btc rdi, 221
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
or ebx, -15
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
cmovb rdx, rcx
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], esi
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
bt cx, ax
or rdi, 21
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
