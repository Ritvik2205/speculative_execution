.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
cmp al, -119
adc cl, dl
jmp .bb_0.3
.bb_0.3:
sub al, dil
adc al, sil
and dil, cl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
