.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
adc rdx, rcx
cmovb bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
adc bl, bl
sbb bl, bl
cmp al, 114
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
sub bl, bl
movzx edi, sil
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
imul cx, ax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
adc al, al
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
cmp cl, dl
mov al, cl
sub dil, 35
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
sbb al, 57
sbb al, dil
test bl, dil
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
mov rdi, rdx
and cl, dl
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
cmovnp di, ax
cmovp rbx, rbx
btr cx, bx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
or ax, -30990
and eax, -1572488789
movsx eax, dl
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
xor rcx, -111
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
xor al, cl
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
imul rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
