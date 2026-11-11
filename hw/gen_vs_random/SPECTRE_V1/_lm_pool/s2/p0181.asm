.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
sub al, -1
lea cx, qword ptr [rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and dl, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
mov cl, al
lea rdi, qword ptr [rbx + rsi]
add dil, sil
and cl, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
