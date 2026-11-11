.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], bx
sub al, bl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc rdi
test cl, -24
xor sil, -33
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
jmp .bb_0.2
.bb_0.2:
xchg dil, cl
add al, -72
lea bx, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
