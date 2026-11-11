.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bx, dx
cmp rcx, -121
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
cmovnbe edx, eax
test si, 20
sub al, 0
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
cmovnp rdi, rdx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor dil, -23
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
neg ax
cmovnl rdi, rcx
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], edx
test dx, 28394
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
test ecx, esi
adc sil, dl
and rax, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 1
bt rax, rax
add dl, -91 # instrumentation
cmovl rbx, rdx
cmovl bx, dx
test cl, -52
or sil, sil
xor rdx, rsi
cmovnz rax, rcx
and rdi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdi]
test bx, dx
mov cl, bl
sub bl, al
cmp bx, 113
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
imul sil
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
add bl, bl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], esi
sub dl, dl
mul ax
or cl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
bts rcx, 26
mul rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
