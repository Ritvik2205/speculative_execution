.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb dl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 12
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
add al, -46 # instrumentation
cmovbe rax, rdi
imul rsi, rdx, 68
btr ax, 89
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1716718453
add cl, -119 # instrumentation
adc cl, al
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
cmp dl, al
lea si, qword ptr [rsi]
add cl, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
movzx eax, bl
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
