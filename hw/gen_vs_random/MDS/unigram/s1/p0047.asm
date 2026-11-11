.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
and al, dil
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and cl, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
or bl, -54
and cl, -23 # instrumentation
cmovno ecx, eax
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 73
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
test eax, 1729060510
jmp .bb_0.1
.bb_0.1:
xor sil, 27
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
btc esi, ebx
bt dx, 162
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and bx, 94
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
or si, 0b1000000000000000 # instrumentation
bsf cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
