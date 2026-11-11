.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
test cl, dil
or eax, 359647041
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
jmp .bb_0.1
.bb_0.1:
xor ax, -16696
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rax, 627810357
jmp .bb_0.4
.bb_0.4:
and rax, 41
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
