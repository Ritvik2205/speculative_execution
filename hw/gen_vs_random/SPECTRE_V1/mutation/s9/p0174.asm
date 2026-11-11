.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -53 # instrumentation
sbb bl, dl
imul eax
sbb al, -114
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
sub al, cl
imul rdx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
cmovnz bx, ax
movzx cx, dil
adc rcx, 43
cmp rax, rdi
lea di, qword ptr [rcx + rdi + 1965]
bt edx, ebx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
