.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul al
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
adc ecx, eax
mov cl, dil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
adc al, -82
and bl, -65
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
mul cl
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
dec rdi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmp dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
