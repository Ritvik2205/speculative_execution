.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, rsi
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
dec rdx
and dil, 98
add bl, 70
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
movzx edx, di
add cl, 105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
add al, -101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
