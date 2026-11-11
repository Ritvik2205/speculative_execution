.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, al
and ax, -16777
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
or cl, cl
cmovz si, di
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
xchg esi, edx
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
cmovnz ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and al, bl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
xchg sil, dil
add al, 80 # instrumentation
mov cl, bl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
cmovnbe rsi, rdi
xchg ecx, eax
movzx ecx, cl
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
and cx, di
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
and di, -34
imul bx, bx
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
movsx dx, al
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
or bl, 61
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
adc rbx, rdx
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
imul ax, di
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
xor rax, -117
mov dl, al
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
