.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
btc di, ax
imul bx, cx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor sil, dil
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
add bl, bl
lea rdi, qword ptr [rsi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
