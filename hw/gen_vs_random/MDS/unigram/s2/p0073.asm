.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
xor al, bl
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
cmovz di, cx
cmovno rdx, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
test rdx, rax
jmp .bb_0.1
.bb_0.1:
btr si, cx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
xor sil, -126
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 99
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
btc di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
