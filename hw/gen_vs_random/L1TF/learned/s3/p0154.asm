.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
add dl, sil
jmp .bb_0.1
.bb_0.1:
add dil, 65 # instrumentation
cmovo rdi, rsi
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
jmp .bb_0.4
.bb_0.4:
add dil, 42 # instrumentation
lea ebx, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
