.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ecx, -38
test rdx, 84
or rax, -263404965
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
xchg esi, ebx
or bx, 3
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 44
sbb eax, 858696050
lea edi, qword ptr [rsi + rdi]
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
adc cl, sil
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
