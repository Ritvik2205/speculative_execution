.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, ax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
cmp rbx, 5
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
or al, dl
mov dil, bl
test cl, -24
mov bl, cl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
dec cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
