.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 125
mov al, cl
and cl, 86
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, 13
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp al, al
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
