.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
adc rdx, rcx
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
imul cx, ax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
mov rdi, rdx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
imul rcx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
sub dil, 35
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
sbb al, dil
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
movzx edi, sil
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and eax, -2001076187
cmp al, 109
movsx eax, dl
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
adc al, al
or ax, -30990
cmovnp di, ax
btr cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
mov al, cl
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
sbb al, 54
cmovp rbx, rbx
xor rcx, 112
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and cl, dl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
xor al, cl
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
test bl, dil
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
cmovb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
