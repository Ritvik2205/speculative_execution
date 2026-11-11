.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
lea ax, qword ptr [rax + rbx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
xor dl, 19
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
