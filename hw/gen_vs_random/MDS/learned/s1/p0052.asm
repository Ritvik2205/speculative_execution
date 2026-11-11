.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
cmovb ecx, edi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 57
and cl, 40
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
mov sil, sil
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
xor al, 78
and dil, 74
jmp .bb_0.1
.bb_0.1:
inc bl
cmovs rax, rdi
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdx], bx
cmovnl ebx, eax
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
cmovo dx, ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and al, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
