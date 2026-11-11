.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx
btr esi, 174
bt dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
setbe cl
jmp .bb_0.1
.bb_0.1:
setnl dl
mov al, sil
sub ax, 19828
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and si, dx
mov cl, cl
cmovz esi, eax
xor rsi, 69
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
