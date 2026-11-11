.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
add rdi, 55
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
test rsi, -1408527332
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
cmp bl, -114
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
test sil, 13
add di, cx
or rsi, -119
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
cmovo rax, rax
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
