.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 100
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or bl, -52
xor rbx, 89
or sil, -78
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
test eax, 424329527
or esi, -110
or rdx, -48
xor bx, 1
test al, -7
test cl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
