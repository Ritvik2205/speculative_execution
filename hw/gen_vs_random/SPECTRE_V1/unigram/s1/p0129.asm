.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rcx, 23
bt edx, ebx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
cmp cl, bl
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
imul rax, rdx, 15
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
btr rsi, rbx
imul ecx, ebx, 28
sbb dil, sil
add dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
