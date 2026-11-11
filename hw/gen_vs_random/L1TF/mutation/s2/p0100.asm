.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
btc eax, 220
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
seto sil
cmovl rbx, rbx
adc dl, -12
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
add al, 74
and sil, 37
cmovnb di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
