.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 27
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 24
cmovp ax, bx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
imul bx, cx
and al, bl
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
cmp sil, 88
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
sub rdx, 22
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
add bl, -72
sbb bl, 57
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
movsx rsi, al
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
cmp cl, 38
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
cmovb esi, ebx
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
inc cl
cmp dl, 33
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 44
sub sil, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 21
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
cmovs rdi, rcx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rbx]
add al, al
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add cl, -37 # instrumentation
adc edx, 44
cmp di, 6
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
or edx, -127
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
sub dil, sil
not ax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
