.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 90
test cx, bx
or cl, -78
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
xor al, 16
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
adc dil, 120
cmp bx, 90
bt rbx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
