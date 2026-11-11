.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rdi + rcx + 55876]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add bl, 119 # instrumentation
cmovle si, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rcx]
add dil, dil
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 12
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
test bx, cx
test dl, -37
add sil, -5 # instrumentation
adc al, sil
btc rdx, rax
cmovl ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
