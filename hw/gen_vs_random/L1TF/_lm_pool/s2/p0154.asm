.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or rdi, 95
or dil, cl
jmp .bb_0.1
.bb_0.1:
or sil, bl
jmp .bb_0.2
.bb_0.2:
test bl, 12
xor rdx, 122
test bl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
