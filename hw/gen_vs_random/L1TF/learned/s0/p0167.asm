.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
add al, 74
btr ax, si
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 45
and bl, al
cmp al, 27
jmp .bb_0.1
.bb_0.1:
add ax, -24961
sbb bl, -88
test bl, -92
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
or ax, -18131
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
