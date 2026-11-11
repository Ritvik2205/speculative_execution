.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
test bl, 12
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 56
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
cmovnp bx, di
adc dil, bl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
cmovno bx, ax
btc dx, cx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
