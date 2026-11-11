.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
cmovnl ebx, eax
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
xor cl, 24
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
and al, 32 # instrumentation
cmovnbe eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
and bl, 96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
btr bx, ax
and cl, 8 # instrumentation
cmovz rbx, rcx
btr ebx, ebx
or rdx, -109
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
bt cx, 22
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
