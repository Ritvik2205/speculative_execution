.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz di, cx
btr rcx, rax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
or rcx, -17
bts ebx, 205
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
cmovnz rdi, rdx
bts rsi, rbx
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
jmp .bb_0.1
.bb_0.1:
bts ebx, 205
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor dil, -124
or dx, dx
cmovnp rcx, rax
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
