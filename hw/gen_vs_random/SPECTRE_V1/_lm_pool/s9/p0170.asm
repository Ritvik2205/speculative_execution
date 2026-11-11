.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
lea bx, qword ptr [rbx]
mov dl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
sub rdi, 89
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
setns bl
xchg al, dl
and bl, cl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
