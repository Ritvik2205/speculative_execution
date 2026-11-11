.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 79
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
add al, sil
cmovnp di, si
sbb cl, bl
jmp .bb_0.1
.bb_0.1:
add cl, -36
jmp .bb_0.2
.bb_0.2:
test bl, 45
xor al, bl
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
