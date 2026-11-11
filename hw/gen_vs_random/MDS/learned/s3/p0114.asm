.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, cx
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
test sil, dil
test al, bl
or sil, -49
or ax, 30524
and dl, al
or dil, al
jmp .bb_0.1
.bb_0.1:
test al, 22
test rax, -359674714
test al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
