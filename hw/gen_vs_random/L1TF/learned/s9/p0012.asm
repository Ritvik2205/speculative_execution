.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and dil, -82
or al, -5
bt si, cx
jmp .bb_0.1
.bb_0.1:
test sil, cl
xor al, dl
sbb dl, -26
add di, 50
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
sbb sil, 19
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
