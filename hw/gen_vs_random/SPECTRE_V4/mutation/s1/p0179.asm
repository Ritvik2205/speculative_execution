.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
sbb al, -4
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
adc al, al
cmp cl, dl
or ax, 7381
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
adc rdx, rcx
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and cl, dl
cmovp rbx, rbx
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
xor rcx, 112
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
imul rcx
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
cmp al, 116
mov al, cl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
cmovnp di, ax
imul cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
movzx edi, sil
sbb bl, bl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
movsx eax, dl
cmovb bx, cx
mov rdi, rdx
sbb al, dil
test bl, dil
and eax, -1572488789
sub bl, bl
sub dil, 35
btr cx, bx
xor al, cl
adc bl, bl
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
