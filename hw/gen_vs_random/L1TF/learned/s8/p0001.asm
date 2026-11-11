.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 93
cmp esi, -52
test sil, 29
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
lea di, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
cmp bl, 123
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
cmp dil, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
