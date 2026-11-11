.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
sub al, sil
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ebx, 75
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx], 57
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
