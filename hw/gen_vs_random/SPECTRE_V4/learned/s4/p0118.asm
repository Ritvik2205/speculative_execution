.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
add eax, esi
mul ax
dec rcx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
adc esi, 90
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
imul si, dx
add dil, 82
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
sbb ecx, 78
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 28
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
imul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
