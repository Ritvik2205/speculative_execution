.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
imul bx, bx
adc dl, al
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
cmovnz ecx, eax
movzx ecx, cl
add dl, dl
movsx dx, al
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
xchg ecx, eax
xchg sil, dil
xor rax, -1522567562
xchg esi, edx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
imul ax, di
and ax, -6897
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
and di, -34
sub dl, dl
and cx, di
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
cmovz si, di
or bl, -86
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
mov dl, al
or cl, cl
cmovnbe rsi, rdi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
add al, 80 # instrumentation
mov cl, bl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and al, bl
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
adc rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
