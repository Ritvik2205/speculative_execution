.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
lea ebx, qword ptr [rdx + rbx]
sbb bl, 79
imul cl
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
add dl, 117 # instrumentation
sbb rdx, rax
sub rdi, 75
js .bb_0.1
jmp .exit_0
.bb_0.1:
inc rbx
not ax
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
lea ax, qword ptr [rax + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
