.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rdi, qword ptr [rax]
xchg edx, ebx
jmp .bb_0.2
.bb_0.2:
add cl, -5 # instrumentation
adc dl, cl
add cl, -127
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sub edi, 98
lea bx, qword ptr [rax + rsi]
sub al, cl
lea rbx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
