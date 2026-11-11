.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp di, ax
mov rdi, rdx
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
sub dil, -11
cmovp rbx, rbx
sbb al, dil
adc al, al
btr cx, bx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
movsx eax, dl
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
movzx edi, sil
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
adc bl, bl
xor al, cl
xor rcx, 112
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
imul cx, ax
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
adc rdx, rcx
cmp al, -78
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
sbb bl, bl
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
cmovb bx, cx
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
or ax, -26182
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
test bl, dil
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
cmp cl, dl
imul rcx
sub bl, bl
and eax, -1948401947
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
and cl, dl
sbb al, 54
mov al, cl
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
