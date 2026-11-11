.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
adc dl, sil
and dl, bl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
setns al
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 72 # instrumentation
cmovns di, bx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 10
or ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
add sil, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
