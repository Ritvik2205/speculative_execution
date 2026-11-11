.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
sbb dil, dl
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
setle al
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 60
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 18
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
xor rcx, rax
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 96
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
add eax, 871834813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
