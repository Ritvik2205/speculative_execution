.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
cmp bl, bl
adc rsi, 43
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
lea bx, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 28
movzx eax, cx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
