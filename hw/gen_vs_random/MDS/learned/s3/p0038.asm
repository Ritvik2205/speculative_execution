.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
xor cl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and al, bl
test cl, -86
or cx, -42
and cl, dil
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
jmp .bb_0.1
.bb_0.1:
btc ax, 18
xor bl, dil
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
