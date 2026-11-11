.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 76
add dl, -78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
imul rdx, rbx, -43
inc al
cmp cl, cl
lea esi, qword ptr [rsi + rdi + 86]
add rax, 1633593912
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rax]
add al, 115 # instrumentation
lea ebx, qword ptr [rbx + rax]
inc cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
