.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, 692647572
test eax, 133988823
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
add cl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rax, rdi
movzx cx, dil
cmovnz bx, ax
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
bt edx, ebx
adc rcx, 43
lea di, qword ptr [rcx + rdi + 1965]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
add al, 105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
