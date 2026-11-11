.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and sil, dl
add cl, 88
add ax, 32140
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 8
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
xor al, 16
jmp .bb_0.3
.bb_0.3:
and eax, -409673666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
