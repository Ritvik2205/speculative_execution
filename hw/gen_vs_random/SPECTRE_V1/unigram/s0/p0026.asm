.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
add dl, 20 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 89
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
btr esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -53 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 90
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 91
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], di
btc rax, rbx
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
