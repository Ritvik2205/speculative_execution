.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, dl
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
or cl, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
adc dl, al
movsx dx, al
cmovz si, di
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
or bl, -35
xchg sil, dil
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
imul bx, bx
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
mov dl, al
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
cmovnbe rsi, rdi
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
xchg ecx, eax
and di, -34
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and al, bl
adc rbx, rdx
and ax, 26513
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xor rax, 1049851782
cmovnz ecx, eax
add al, 80 # instrumentation
mov cl, bl
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
imul ax, di
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
xchg esi, edx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
and cx, di
movzx ecx, cl
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
