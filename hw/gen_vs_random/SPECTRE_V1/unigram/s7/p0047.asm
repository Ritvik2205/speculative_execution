.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 848176907
test rax, -1638758413
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
add bl, -64 # instrumentation
cmovnle edx, ecx
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
sbb sil, al
movsx esi, cx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
add dil, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
