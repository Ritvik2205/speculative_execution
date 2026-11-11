.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -36 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 28
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
mov dx, cx
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 23
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
sub rcx, -121
cmovns cx, bx
cmovnb eax, esi
movzx rax, ax
sub rax, -1628299544
jmp .bb_0.1
.bb_0.1:
add al, -40 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
movsx ax, cl
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
add eax, -1
lea si, qword ptr [rbx + rsi + 54]
lea bx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
