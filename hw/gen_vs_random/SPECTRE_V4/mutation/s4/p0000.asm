.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
xchg ecx, eax
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
or bl, 111
and di, -65
cmovz si, di
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
xor rax, 93
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
movzx ecx, cl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
xchg esi, edx
sub dl, dl
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
add dl, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
adc dl, al
cmovnz ecx, eax
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
mov dl, al
and al, bl
add al, 80 # instrumentation
mov cl, bl
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
or cl, cl
cmovnbe rsi, rdi
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
imul bx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
xchg sil, dil
movsx dx, al
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
imul ax, di
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
adc rbx, rdx
and ax, 13045
and cx, di
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
