.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
dec rax
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
add cl, -82 # instrumentation
sbb si, ax
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
sbb al, -101
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
imul rdi
adc ecx, -12
or bx, -111
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
add dil, -10 # instrumentation
cmovnbe edi, ecx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 26
add dx, -90
add bl, bl
add esi, ecx
or bl, sil
cmovle cx, cx
sbb al, dil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rax]
add rcx, rbx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 32
add al, 5
xor al, -2
movzx si, sil
xor dx, 35
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 52
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
cmovz eax, ebx
sbb dl, cl
imul rdi, rsi, 57
or eax, 1802312508
xor rbx, 58
sbb dil, 47
cmp rsi, 41
xchg rsi, rbx
or si, 41
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
or eax, 1802312508
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
