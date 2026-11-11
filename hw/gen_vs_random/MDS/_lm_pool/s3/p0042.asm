.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
or al, -24
or al, bl
jmp .bb_0.1
.bb_0.1:
test cl, 91
and di, 91
xor dil, -70
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or sil, cl
or al, -24
and dl, -73
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and edx, -44
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
