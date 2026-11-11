.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -74 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 36
adc edx, 73
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
xor dil, dil
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdi, rsi
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 35
btc ebx, esi
dec dil
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
lea ecx, qword ptr [rdx + rsi + 47]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
