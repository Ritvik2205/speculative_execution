.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 71
setnb dl
dec bl
or dil, dil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
add dil, sil
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sbb al, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
