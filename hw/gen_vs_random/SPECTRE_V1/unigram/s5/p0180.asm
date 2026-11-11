.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, 71
add dl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
add rax, 977059290
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], si
add bl, -5 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
sub cl, -47
mov cl, cl
and rax, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
cwde
inc dil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
