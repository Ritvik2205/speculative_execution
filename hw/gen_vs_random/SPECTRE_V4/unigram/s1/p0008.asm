.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
test bl, -29
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
mov al, al
cmovp rdi, rbx
cmovnle ax, ax
cmp al, bl
add al, -67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and ecx, 71
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rbx]
movsx ebx, ax
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
mov eax, -1056201206
mov cx, -22668
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test rdx, rcx
add al, dil
movzx edx, cl
movsx bx, dil
mul rbx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
adc ebx, 66
adc bl, dl
sbb di, -105
xchg dil, dl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
add dl, -8
inc sil
cmovo dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
adc sil, al
cmp ecx, esi
and edx, 46
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 37
cmovno eax, ebx
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
cmp ecx, 71
cmovle cx, cx
sbb al, al
mov bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
