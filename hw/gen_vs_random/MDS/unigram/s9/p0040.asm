.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and al, -3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 22
cmovno bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
test dl, cl
test ecx, -1843375753
xor sil, dil
xor al, sil
and eax, 366961170
xor sil, sil
and al, bl
and bl, 127 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
or al, sil
xor al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
