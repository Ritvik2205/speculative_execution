.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, cl
add ax, 23362
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
and dl, -109
adc ebx, eax
and cl, al
test al, -99
add dl, al
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
mov rbx, -8992833348021516010
setns al
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
lea ebx, qword ptr [rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
cmovp bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
