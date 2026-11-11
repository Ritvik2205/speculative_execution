.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
adc eax, ecx
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
test edx, esi
setnb cl
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or dil, sil
and dil, sil
imul esi
add di, 44
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
inc si
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 99
lea ecx, qword ptr [rsi + rcx + 61]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
