.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -56 # instrumentation
cmovnle eax, edx
test rdi, rdx
test dl, dl
bt eax, 37
cmovz ax, ax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and edx, -44
test sil, al
test rbx, 50
bts rcx, rdx
or dl, -21
cmovnz edx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor al, sil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and bl, sil
bt ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
