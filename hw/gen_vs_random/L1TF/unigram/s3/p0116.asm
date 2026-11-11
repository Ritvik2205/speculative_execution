.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle dx, si
sub dx, si
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and ecx, eax
jmp .bb_0.1
.bb_0.1:
cmp si, 70
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 33
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
cbw
add bl, 68
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
