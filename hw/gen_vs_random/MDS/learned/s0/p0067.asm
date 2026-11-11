.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dil
test sil, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
test al, cl
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xor si, 80
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rax, -636362975
test dil, -51
or al, 25
or cl, al
test rax, -363019044
cmovle rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
