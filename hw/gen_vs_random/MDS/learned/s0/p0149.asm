.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
or cl, sil
jmp .bb_0.1
.bb_0.1:
xor bl, al
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
bts rdx, 200
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
or cl, -36
or rax, 52
btc bx, 104
or cl, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
