.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -54
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
or al, 54
or rcx, -17
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and eax, -574348013
or sil, -49
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and cl, -71
or al, sil
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
