.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
or si, dx
cmovnp rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and bl, 45 # instrumentation
cmovnb dx, di
cmovno bx, bx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
test rax, 1978892575
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and dl, 16 # instrumentation
cmovle ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
or ax, -23697
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
