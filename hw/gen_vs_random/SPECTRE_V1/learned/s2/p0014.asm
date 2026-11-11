.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -120
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
adc al, -92
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, -68
jns .bb_0.2
jmp .exit_0
.bb_0.2:
add sil, -68
sbb dl, al
add cl, -123 # instrumentation
cmovnp rax, rbx
cmp eax, 692647572
and dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
