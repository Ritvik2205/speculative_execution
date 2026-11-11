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
sub dl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
mov al, sil
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 5
add cl, al
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 100
add dl, dil
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
