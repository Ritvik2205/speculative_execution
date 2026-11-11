.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
cmovle esi, eax
and cl, -3 # instrumentation
cmovnb cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
bts ebx, esi
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 63
and bx, di
and al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
btc rcx, 33
jmp .bb_0.1
.bb_0.1:
and dl, -107 # instrumentation
cmovz rcx, rbx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and al, 126
cmovnb ax, si
and bl, dil
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
xor cx, 17
bt ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
