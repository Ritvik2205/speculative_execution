.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -31
and cl, 18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
test al, -7
or dil, -76
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
bts si, 205
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rsi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
btr dx, ax
btc di, 233
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
cmovnz rax, rdx
cmovp esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
test sil, dil
cmovbe edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
