.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, cl
test sil, 28
xor edx, 16
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 34
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and al, -37
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
cmovs edx, edx
or ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 90
xor rbx, rcx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
xor eax, 73
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 96
xor rsi, 89
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and sil, -94
and al, 73
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
