.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
and si, cx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
add bl, -91 # instrumentation
inc rdi
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
test ecx, 860867711
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
adc bl, 0
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
cmovle si, ax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
adc dl, dil
adc edi, -83
mov rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or cl, -33
dec rsi
cmp ax, -22704
imul edi, eax, 10
bt edx, 85
sbb cl, sil
xor sil, 90
cmp dl, cl
bt rax, rcx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
or rcx, 67
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], dx
mul dil
cmovp rax, rsi
adc ebx, 66
add cl, -50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
add rax, rsi
sub dil, 65
cmovs eax, esi
add dl, bl
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
cmovnbe rdx, rcx
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
adc bx, 52
cmovl rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
