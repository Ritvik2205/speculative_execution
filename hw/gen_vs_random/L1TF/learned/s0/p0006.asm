.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb ecx, eax
xchg dil, bl
cmp al, dil
jmp .bb_0.1
.bb_0.1:
cmp cl, 57
jmp .bb_0.2
.bb_0.2:
test al, -84
and dl, 10
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
