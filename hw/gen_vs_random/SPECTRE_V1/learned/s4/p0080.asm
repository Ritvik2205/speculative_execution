.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
cmovnl eax, edx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
cmovno esi, ebx
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
add cl, -42 # instrumentation
adc dil, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
cmovle di, di
or rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
