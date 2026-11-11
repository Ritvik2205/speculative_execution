.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
btc rdx, rdx
add al, -94 # instrumentation
cmovnle rbx, rax
movsx rdi, bx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
adc ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
mov ax, dx
cmovnbe ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and al, bl
sub edx, -122
test bl, -16
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
cmovbe ax, bx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
sbb ax, ax
and sil, sil
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
adc dl, bl
cmovl rax, rbx
cmp al, 115
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
cmovnb ebx, eax
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
test si, ax
add bl, -49
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
or esi, ecx
cmovl bx, si
xor dil, sil
cmovle rsi, rbx
cmp bl, bl
not rsi
movsx bx, dl
imul bl
xor dl, dl
imul bl
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rax
cmp esi, -84
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
imul ax, ax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
bswap rdx
cmovbe rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
