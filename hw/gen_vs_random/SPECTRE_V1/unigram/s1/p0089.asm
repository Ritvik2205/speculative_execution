.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, dl
add cl, 75 # instrumentation
sbb dil, sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
imul bl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 19
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
setnl cl
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
setnp dl
cwd
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
or ax, -89
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 95
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
