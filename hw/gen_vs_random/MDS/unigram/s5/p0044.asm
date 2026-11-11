.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, 22
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
btc dx, si
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
cmovnl si, cx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
test dl, 27
xor ax, -5889
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
cmovnz eax, esi
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 71
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
or bl, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
