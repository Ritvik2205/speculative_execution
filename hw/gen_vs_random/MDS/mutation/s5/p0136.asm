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
bts esi, 61
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
and bl, 108 # instrumentation
cmovns rcx, rcx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
test cl, 73
cmovs si, si
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
test eax, -571234566
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
