.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
btc eax, 22
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
sbb dil, dil
add cl, -127
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
