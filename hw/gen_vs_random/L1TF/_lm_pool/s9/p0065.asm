.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
or rax, 1808026647
add dl, 125
or al, -2
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
test dil, -126
sbb bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
