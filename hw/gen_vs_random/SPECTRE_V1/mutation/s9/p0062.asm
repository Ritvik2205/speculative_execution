.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 23362
test al, -75
adc ebx, eax
and cl, al
and dl, -111
add dl, al
xor al, cl
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rcx]
mov rbx, -8992833348021516010
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
cmovp bx, di
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
setns al
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
