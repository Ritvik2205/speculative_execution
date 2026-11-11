.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 100
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
cmovno rbx, rsi
sbb rsi, 86
add cl, bl
cmp bx, 90
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
add bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
