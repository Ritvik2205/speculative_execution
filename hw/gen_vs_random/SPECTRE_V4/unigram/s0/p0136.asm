.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
cmp dil, bl
cmovnp rax, rbx
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
mov al, -93
cmovb edi, eax
dec al
or bx, -33
sbb dil, 78
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 41
and rdx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rdi
or rdi, -41
sub esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 89
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
cmovnz bx, cx
btc rdx, rcx
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 22
sub dl, -16
and ax, 26513
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
imul di
cmovnz ebx, ecx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
sub dil, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
adc rbx, 60
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 13
add al, al
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
add dl, 92 # instrumentation
cmovnl rdi, rbx
cmovb rbx, rcx
xchg dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
or rsi, rbx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
