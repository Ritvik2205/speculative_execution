.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 87
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
or cl, 6
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
or sil, -78
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
xor dil, -5
cmovnb rsi, rdx
or cl, 119
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
and cl, al
cmovnb ax, cx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
cmovns rcx, rdx
cmovl rax, rcx
or rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
