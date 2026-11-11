.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 64
cmovnz edi, edx
or bl, dl
movzx rcx, dl
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
add al, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
cmovbe ecx, esi
setnb al
adc bl, dl
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
adc rdx, 71
mov bl, bl
mov al, sil
cmp bx, si
adc rax, -1877286258
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
