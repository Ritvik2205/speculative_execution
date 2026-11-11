.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
cmovl edi, eax
cmovnl edi, ecx
and bl, al
xor dil, -3
or dx, 125
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
test bl, cl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
cmovns si, ax
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor sil, -46
and cl, 23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
cmovb edi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
xor al, sil
cmovnbe ax, si
cmovnb ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
