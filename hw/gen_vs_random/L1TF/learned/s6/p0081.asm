.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rdi]
mov bl, 35
setb dil
not ebx
cmp cl, -89
add dil, sil
cmovl di, bx
jmp .bb_0.1
.bb_0.1:
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
