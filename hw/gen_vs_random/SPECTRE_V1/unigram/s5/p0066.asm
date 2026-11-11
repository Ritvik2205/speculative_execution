.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
not dl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
xor sil, -33
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -114
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
sbb eax, edi
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
test rax, -1638758413
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
