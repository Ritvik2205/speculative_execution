.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, -403815802
xchg rbx, rdx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 64
bts eax, edi
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
sbb dil, cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 86
bts eax, edx
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
sbb al, -4
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
