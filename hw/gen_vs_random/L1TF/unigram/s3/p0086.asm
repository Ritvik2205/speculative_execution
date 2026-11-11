.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
add dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
imul ax
sbb sil, cl
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
xor al, cl
add al, 40 # instrumentation
cmovp rcx, rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], -105
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
