.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
add sil, dl
test dl, -7
mov al, bl
add al, cl
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
adc cl, -81
cmovle rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
