.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 93
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor bx, dx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test bl, cl
xor dl, cl
add al, -102
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
