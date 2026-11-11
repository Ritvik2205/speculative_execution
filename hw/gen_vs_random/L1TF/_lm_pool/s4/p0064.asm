.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 20
test al, -70
xor al, al
bts ax, 201
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
add bl, 68
or al, -57
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
adc cl, -34
sbb al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
