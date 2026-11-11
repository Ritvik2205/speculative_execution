.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
or dil, -113
xor cl, 89
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
jnb .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
or ax, -10161
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
