.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -84
or al, -48
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test sil, 29
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 51
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or al, cl
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
