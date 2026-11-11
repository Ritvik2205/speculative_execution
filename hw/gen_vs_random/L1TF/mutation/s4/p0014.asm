.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
xchg rdi, rax
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
add dl, -8 # instrumentation
lea ebx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
add dl, -71 # instrumentation
adc edx, edx
btc edi, esi
mov bx, si
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
cmp eax, -234754587
lea rax, qword ptr [rdx + rax + 57242]
setns dl
cmp ax, -14781
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
