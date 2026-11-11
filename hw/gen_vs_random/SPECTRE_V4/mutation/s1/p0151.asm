.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
adc rdx, rcx
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
sub dil, 35
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
sbb al, dil
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
adc bl, bl
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
xor rcx, 112
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
imul rcx
imul cx, ax
and cl, dl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
mov al, cl
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
cmovb bx, cx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
xor al, cl
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
mov rdi, rdx
cmovnp di, ax
adc al, al
sbb al, -43
movzx edi, sil
movsx eax, dl
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
cmp al, 109
sbb bl, bl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
or ax, -26182
test bl, dil
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
btr cx, bx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and eax, -1948401947
sub bl, bl
cmovp rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
