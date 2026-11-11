.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cdq
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
or si, 0b1000000000000000 # instrumentation
bsf cx, si
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
bswap edx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
adc rcx, rdi
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
add cl, 42 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
