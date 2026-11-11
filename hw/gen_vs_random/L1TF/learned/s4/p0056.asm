.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 9
and di, 6
bts ebx, 46
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jmp .bb_0.2
.bb_0.2:
add al, 42 # instrumentation
lea ebx, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and bl, bl
or dil, -113
test al, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
