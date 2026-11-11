.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
sub dl, -29
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and bl, bl
sbb ecx, -1
jmp .bb_0.2
.bb_0.2:
and di, si
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
