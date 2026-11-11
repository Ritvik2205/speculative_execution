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
lock or word ptr [r14 + rcx], 67
sub dil, -11
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
sbb al, dil
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
movzx edi, sil
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and eax, -1056713114
cmovb eax, ebx
or dx, dx
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
xor rax, -117
cmp ebx, -27
and dil, -120
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
sbb rax, 1518549445
neg dl
mul rbx
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
add cl, dl
sub cl, dl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
cmovno esi, eax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
