.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 23
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
xor cl, al
cmovle rdx, rbx
and bl, -123 # instrumentation
cmovnp di, dx
bts edi, eax
xor cl, -13
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
or edi, esi
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
