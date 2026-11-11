.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, bl
and sil, al
xor cl, bl
test dil, -51
xor sil, 110
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
bt cx, 22
xor rsi, -117
xor rax, rcx
and dil, -62
and dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
btc dx, ax
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
