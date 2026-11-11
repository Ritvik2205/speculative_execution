.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], si
cmp rcx, 12
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
lea di, qword ptr [rbx]
add bl, dil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
jmp .bb_0.1
.bb_0.1:
add cl, cl
cmovno cx, bx
test bl, -8
sbb eax, 125
lea cx, qword ptr [rax + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
