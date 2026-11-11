.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 28
sub rax, 1806572419
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
setb dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
and bl, cl
xor ax, -16232
add sil, cl
test al, dl
add cl, sil
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
