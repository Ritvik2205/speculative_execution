.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ecx
btc rax, 14
and si, 93
adc bl, bl
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
cmp cl, cl
cmovl ebx, edx
add al, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
and dil, dil
cmovb cx, ax
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
imul cx, di, -104
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
neg bl
and rax, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
