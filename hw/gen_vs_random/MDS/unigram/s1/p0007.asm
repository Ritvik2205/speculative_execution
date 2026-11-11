.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
xor dl, bl
cmovle rbx, rsi
cmovl cx, bx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
cmovnp di, ax
btc ecx, 47
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
cmovo bx, ax
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], di
jmp .bb_0.1
.bb_0.1:
test dil, -80
xor sil, -46
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 73
cmovz rbx, rcx
or si, 94
btc esi, edx
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
