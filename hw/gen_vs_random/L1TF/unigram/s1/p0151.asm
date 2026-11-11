.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
add dl, 37 # instrumentation
cmovbe di, bx
btc eax, ebx
lea bx, qword ptr [rax + rsi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
sbb cl, cl
lea dx, qword ptr [rbx + rsi + 92]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
and rdi, rsi
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and cx, 127
and ax, 26813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
