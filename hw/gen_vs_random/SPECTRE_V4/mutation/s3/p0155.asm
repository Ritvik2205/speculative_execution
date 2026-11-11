.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ecx, cl
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
adc dl, al
movsx dx, al
and ax, -12738
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and al, bl
adc rbx, rdx
and cx, di
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
or cl, cl
cmovnz ecx, eax
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and di, -34
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
or bl, 80
cmovnbe rsi, rdi
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
mov dl, al
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
imul ax, di
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
imul bx, bx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
add al, 80 # instrumentation
mov cl, bl
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
cmovz si, di
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
xchg esi, edx
xchg ecx, eax
add dl, dl
sub dl, dl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
xor rax, -111081832
xchg sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
