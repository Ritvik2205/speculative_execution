.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, -42
or cl, sil
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rax, -1931765367
jmp .bb_0.1
.bb_0.1:
not al
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor al, -26
not cl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
