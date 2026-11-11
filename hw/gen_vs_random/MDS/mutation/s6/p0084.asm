.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
cmovs ecx, edi
cmovnbe rcx, rcx
test cl, cl
and rax, 79
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rax, -2058103810
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
bt cx, 22
and sil, al
xor sil, 27
xor rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
xor rsi, -117
and dil, 125
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
xor cl, bl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
test dil, 46
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
btc dx, ax
or cl, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
