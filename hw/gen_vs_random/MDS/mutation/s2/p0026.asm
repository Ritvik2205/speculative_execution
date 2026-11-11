.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
cmovnz bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
btc rax, 59
and cl, 125 # instrumentation
cmovo ax, di
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test cl, cl
and dl, cl
btc bx, 104
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and bl, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
and al, -54
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
bt edx, edi
test sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
