.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 80
or rcx, 94
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rdx, -19
add dil, 72
jns .bb_0.2
jmp .exit_0
.bb_0.2:
dec dl
xor cl, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
