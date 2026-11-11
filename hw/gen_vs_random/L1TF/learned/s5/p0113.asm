.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
cmp rax, 1138518729
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
add rax, 909978580
jmp .bb_0.1
.bb_0.1:
bt rcx, 38
adc cl, bl
cmovbe esi, edx
xor cx, 113
lea ebx, qword ptr [rdx + rdx + 88]
cmp sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
