.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
add sil, bl
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and dil, -114
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
add al, cl
cmovb bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
