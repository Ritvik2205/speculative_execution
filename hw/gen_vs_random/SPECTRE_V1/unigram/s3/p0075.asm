.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
lea rax, qword ptr [rbx + rax + 87]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 91
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
imul esi, edx, 33
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and bx, -118
add dil, dl
bswap rax
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edi
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 92
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
