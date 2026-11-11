.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
mov dx, cx
add cl, -36 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 124
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
movzx rax, ax
cmovns cx, bx
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 28
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
sub rax, 1715032616
sub rcx, -90
cmovnb eax, esi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
