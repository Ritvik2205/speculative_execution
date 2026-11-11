.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
and dl, -72 # instrumentation
not cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
cmovnle di, bx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
and al, -114
and al, cl
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
or dx, 125
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
btc rdi, 221
and dil, -75 # instrumentation
cmovp edi, edi
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
or ebx, -104
and sil, -116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
test ecx, -1843375753
test dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
