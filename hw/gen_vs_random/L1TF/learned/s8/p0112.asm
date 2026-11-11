.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
adc bx, 73
cmp ax, 7046
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 43
test al, 15
and al, -68
lea rdx, qword ptr [rsi + rdi + 13]
jmp .bb_0.1
.bb_0.1:
add dil, -7
lea rbx, qword ptr [rdi + rbx + 66]
cmovnp ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
