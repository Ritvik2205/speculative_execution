.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, eax
and sil, -75 # instrumentation
cmovp esi, esi
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 59
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and cx, si
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and dl, 60 # instrumentation
cmovnl esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
or rdi, 21
and sil, 74
btc ecx, 8
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
not bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
test al, cl
or al, bl
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
