.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
xor rax, -98
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
or cl, cl
imul ax, di
movsx dx, al
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
adc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
imul bx, bx
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
cmovnz ecx, eax
cmovz si, di
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
add al, 80 # instrumentation
mov cl, bl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and di, -65
and al, bl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
xchg sil, dil
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
cmovnbe rsi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and cx, di
xchg esi, edx
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
mov dl, al
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
adc dl, al
or bl, -80
xchg ecx, eax
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
sub dl, dl
movzx ecx, cl
and ax, 16313
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
