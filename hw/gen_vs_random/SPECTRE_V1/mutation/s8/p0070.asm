.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, -563371897
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
add cl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
test eax, 525596342
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rax, rdi
cmovnz bx, ax
bt edx, ebx
adc rcx, 43
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
add al, 105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
lea di, qword ptr [rcx + rdi + 1965]
movzx cx, dil
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
