.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
cmovbe ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
test cl, bl
test dl, -119
xor rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
or cx, bx
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
test rdi, 80
xor dil, -124
cmovnz rdi, rax
and sil, 89
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 26
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
xor cl, sil
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
