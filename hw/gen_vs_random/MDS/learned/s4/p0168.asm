.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
jmp .bb_0.1
.bb_0.1:
or cl, 39
xor sil, -15
xor dl, bl
xor dil, bl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
test dil, sil
xor sil, -126
jmp .bb_0.2
.bb_0.2:
not dil
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
