.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx
add dil, -29 # instrumentation
add dil, -70 # instrumentation
setnp dil
sbb al, al
cmovo rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 60
test dl, -105
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, al
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
adc cl, sil
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 65
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
imul edx, ebx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
