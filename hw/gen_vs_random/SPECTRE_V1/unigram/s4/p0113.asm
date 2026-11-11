.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
cmovno edx, eax
adc cl, -81
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
bt bx, 70
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rbx + rsi + 18]
setnp sil
cmp bl, -114
add esi, 6
imul esi, edx, 71
lea di, qword ptr [rdx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
add cx, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
