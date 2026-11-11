.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 10
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp dil, 96
test al, -70
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 86
sub dl, 105
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 28
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
adc al, bl
or bx, 90
and cx, -79
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
lea eax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
