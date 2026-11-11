.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rcx, 91
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and al, 73
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
cmovo rdx, rsi
test sil, dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rsi]
and ax, 30884
not al
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
and bl, 76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
and cl, -3 # instrumentation
cmovnb cx, ax
btc rcx, 26
or dil, dil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
cmovnbe ax, bx
cmovnb bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
