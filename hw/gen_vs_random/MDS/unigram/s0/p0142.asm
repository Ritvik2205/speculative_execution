.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ecx, edx
test cl, cl
and rbx, rbx
bt di, 52
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edx
and al, 23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
xor bl, -27
btc rax, 106
bts eax, 222
and al, -38 # instrumentation
cmovnb ax, ax
and bl, 68
bts rsi, rdi
and bl, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 43
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
btr rdi, 129
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
