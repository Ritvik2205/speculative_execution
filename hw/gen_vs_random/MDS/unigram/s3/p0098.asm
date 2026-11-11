.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
bt edx, 20
test cl, 101
or ax, -20176
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -124
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and si, -121
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
cmovz ebx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and al, cl
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsr bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
