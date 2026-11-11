.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and bl, -43
xor eax, -1721938664
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 96
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
add dil, bl
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
sub dl, dil
dec dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 33
or bx, 9
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
