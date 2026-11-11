.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 18
test cl, al
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
cmovno rdx, rax
cmovnp ebx, edx
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
bts bx, cx
btc ax, dx
cmovs ebx, ebx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rcx, 107
cmovz ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
not dil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
