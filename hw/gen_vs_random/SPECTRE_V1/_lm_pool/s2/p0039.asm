.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 70
add cl, -127
test al, 40
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
add cl, al
lea bx, qword ptr [rsi + rdx]
lea bx, qword ptr [rcx]
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
