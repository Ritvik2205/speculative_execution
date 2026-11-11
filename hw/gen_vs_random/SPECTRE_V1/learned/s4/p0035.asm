.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
lea ebx, qword ptr [rax]
add cl, bl
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 2
adc dx, -112
test al, 34
and dil, cl
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
cmovle rdi, rdx
lea si, qword ptr [rbx]
adc al, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
