.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, 22
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
xor cl, bl
xor rsi, -117
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
xor sil, -15
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
xor rax, rcx
btc dx, ax
and sil, al
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and dil, -39
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
test dil, 46
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
