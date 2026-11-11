.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and al, -68
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or sil, -44
neg rbx
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
add cl, bl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
