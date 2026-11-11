.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, al
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
and dl, -92
add ax, 6980
adc ebx, eax
xor al, cl
add dl, al
test al, -75
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
setns al
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
mov rbx, -8992833348021516010
cmovp bx, di
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
lea ebx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
