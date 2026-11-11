.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
add dl, dl
imul ax, di
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
xchg ecx, eax
xchg sil, dil
add al, 80 # instrumentation
mov cl, bl
xchg esi, edx
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
or cl, cl
and cx, di
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
xor rax, -111081832
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
cmovz si, di
cmovnz ecx, eax
cmovnbe rsi, rdi
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
imul bx, bx
adc dl, al
or bl, 61
and ax, 27239
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
movzx ecx, cl
movsx dx, al
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
mov dl, al
adc rbx, rdx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and al, bl
and di, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
