.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
mov bl, cl
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
adc al, dil
inc ecx
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
