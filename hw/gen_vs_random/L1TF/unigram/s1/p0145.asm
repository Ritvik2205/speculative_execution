.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
adc dil, 120
adc al, dil
add al, -80
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
lea eax, qword ptr [rbx + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
cmp bl, sil
bts edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
btc bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
