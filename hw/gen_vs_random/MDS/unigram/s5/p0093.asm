.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
cmovnb bx, ax
and bl, -74 # instrumentation
cmovns edi, ebx
test al, al
test rdx, rax
and sil, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
and bl, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
or di, 80
or ax, ax
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
test dl, al
btc rdx, rbx
cmovnle rcx, rdi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
cmovnl di, ax
and dx, dx
and rdx, rdx
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
