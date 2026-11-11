.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 56 # instrumentation
cmovns edi, ecx
or dl, cl
cmovle rbx, rax
lea si, qword ptr [rcx + rbx]
test edx, ecx
or bl, cl
test edx, ebx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, cl
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
xor cl, 114
test edx, ebx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 78
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -25
btc rsi, 82
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
