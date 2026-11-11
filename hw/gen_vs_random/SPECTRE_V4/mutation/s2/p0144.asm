.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
or cl, cl
and al, bl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
xchg esi, edx
cmovnbe rsi, rdi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
or bl, -80
xor rax, -1522567562
xchg ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
sub dl, dl
cmovz si, di
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and cx, di
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
imul ax, di
adc dl, al
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
and ax, 26513
add al, 80 # instrumentation
mov cl, bl
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
mov dl, al
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
add dl, dl
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
and di, -34
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
imul bx, bx
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
movzx ecx, cl
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
cmovnz ecx, eax
movsx dx, al
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
adc rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
