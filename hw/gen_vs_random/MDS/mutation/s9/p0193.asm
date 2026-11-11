.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
and dil, -39
xor rsi, -117
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
xor sil, 94
bt cx, 22
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
or cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
btc dx, ax
and sil, al
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
test dil, -80
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
xor rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
