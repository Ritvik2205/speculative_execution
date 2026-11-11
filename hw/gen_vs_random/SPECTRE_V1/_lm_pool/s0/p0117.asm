.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
or al, dil
xor edi, 115
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
cmp rdx, -19
lea esi, qword ptr [rdx]
or cl, -62
cmp bx, 6
sub al, dl
adc al, -82
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
lea ax, qword ptr [rdx + rsi + 17]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
