.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
cmovle ax, di
or al, al
bt eax, edx
sub al, cl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
xor dl, al
adc dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
