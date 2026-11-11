.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
lea rsi, qword ptr [rbx]
setns sil
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
not edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
adc cl, cl
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
