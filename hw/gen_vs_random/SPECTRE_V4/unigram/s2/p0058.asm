.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edx, -95
cmp ebx, 80
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
or bl, -80
bswap rdx
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
sub bl, dil
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdi]
sbb dl, al
adc cl, sil
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 63
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
xor cl, -73
add dl, dl
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and bl, al
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 43
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], eax
cmovz ebx, esi
mul bl
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
bt dx, 193
adc dx, di
mov al, dl
adc dl, 85
cmovnp ebx, esi
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
adc dil, dil
cmovo ax, cx
adc al, dl
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
cmovnle dx, di
movsx rcx, ax
movsx si, dil
and cx, di
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 33
not al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
or al, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
