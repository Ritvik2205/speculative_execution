.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 164
add sil, sil
and rsi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rsi]
or sil, cl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
and ax, cx
cmp bl, dil
add dl, 109 # instrumentation
cmovnb rdi, rsi
and eax, edx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rax]
test ax, 13879
add dl, -53 # instrumentation
lea rdx, qword ptr [rcx + rax + 82]
mov dil, 15
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
