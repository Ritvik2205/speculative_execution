.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
js .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
sbb dl, 127
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
sbb dil, dl
xor bx, 47
lea rax, qword ptr [rcx]
adc sil, -77
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
