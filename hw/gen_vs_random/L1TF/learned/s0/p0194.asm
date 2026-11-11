.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
test al, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
