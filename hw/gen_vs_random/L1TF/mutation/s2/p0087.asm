.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
xchg rdi, rax
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
add dl, -71 # instrumentation
adc edx, edx
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
btc edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
add dl, -8 # instrumentation
lea ebx, qword ptr [rcx]
mov bx, si
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rdx + rax + 57242]
cmp ax, -6940
cmp eax, 39856325
setns dl
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
