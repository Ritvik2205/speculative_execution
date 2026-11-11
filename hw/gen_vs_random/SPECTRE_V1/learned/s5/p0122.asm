.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
sbb dl, cl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
test al, 34
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
inc ecx
test sil, 47
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add al, 3
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
