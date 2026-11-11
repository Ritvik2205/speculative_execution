.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
sbb eax, -1165635662
sub rax, -15
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and al, dl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
adc al, cl
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
