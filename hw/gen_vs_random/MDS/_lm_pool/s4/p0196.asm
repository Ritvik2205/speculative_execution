.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -61
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
or al, bl
test al, bl
test cl, al
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
test dil, 46
or rdx, -109
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and sil, -69
test al, cl
cmovnbe rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
