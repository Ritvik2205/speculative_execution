.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -47
and sil, -84
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
btc edx, 108
xor ax, -29507
cmp al, 98
add bx, 70
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
cmp al, 98
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
adc dl, 89
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
test al, sil
and al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
