.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 21 # instrumentation
adc di, 5
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rdi, 46
and al, bl
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rdi]
cmovle rax, rbx
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
lea rcx, qword ptr [rsi + rax]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
