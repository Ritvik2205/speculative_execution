.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb cl, cl
movsx edx, cl
imul rdx, rbx, -43
setb bl
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
cmovle rcx, rbx
jmp .bb_0.1
.bb_0.1:
cbw
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
adc rax, 41513450
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
