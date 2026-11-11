.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 76
movsx ebx, dil
add dil, 105
sub al, al
or cx, dx
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
cmovno esi, edx
bt edx, 81
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
add bl, 95 # instrumentation
mov al, 92
add al, 40
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 80
sub bl, bl
sub cl, cl
sbb dl, -106
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
mul dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rax
or rbx, -107
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
mov ebx, edx
mul si
xchg dx, bx
add al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
test rcx, 94
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
mov dl, dl
xor rdi, rcx
sub bx, 24
sub rbx, 101
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 58
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
test si, 3
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
test dl, 24
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
