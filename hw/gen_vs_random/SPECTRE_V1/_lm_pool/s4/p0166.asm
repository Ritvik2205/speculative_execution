.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
or bl, 40
and dil, cl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb al, al
js .bb_0.2
jmp .exit_0
.bb_0.2:
test dl, -105
sbb esi, 71
mov dl, sil
add cl, dil
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
