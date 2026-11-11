.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 28091
btr rdx, 194
cmovb rdx, rbx
cmovnle rcx, rdi
or al, dil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
cmovnbe di, si
and dl, -73 # instrumentation
cmovns rdi, rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
cmovnl rax, rax
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 93
bt eax, eax
or ax, -4635
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
and cl, 95 # instrumentation
cmovns rsi, rsi
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
