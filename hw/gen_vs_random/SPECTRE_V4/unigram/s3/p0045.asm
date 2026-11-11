.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, 1561062795
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 81
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 75
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 20
not ax
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
cmovle ecx, ebx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 38
xchg bx, si
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 71
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
and esi, 55
add cl, 22
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
dec cx
sbb dil, 36
cmp dl, al
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
btc bx, 98
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 25
test dil, bl
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
imul bx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
btc rax, 66
xor cl, dl
test al, dl
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
cmp sil, 88
movzx ax, al
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 14
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
movzx bx, dl
sbb rcx, 85
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
or bl, bl
bt eax, 84
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
xchg bl, dl
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
