.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
cmovle ax, bx
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
test al, -104
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rdx + rbx + 49]
test al, -56
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rbx]
lea rbx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
