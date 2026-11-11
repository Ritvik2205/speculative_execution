.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ecx, eax
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], si
cmovp esi, ecx
xor dx, 92
and al, 2 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
xor dl, 8
cmovno rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and di, 99
cmovbe cx, bx
or bl, cl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
xor dil, 124
xor al, 9
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
