.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
mov rcx, rbx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 38
cmovo rdi, rdx
sbb ax, -19255
cmovs rdx, rsi
xor rbx, 47
sub cl, dl
cmovnbe rdi, rbx
movzx eax, cl
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 8
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, edi
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
cmovnb si, si
bts ecx, 7
cmovle si, bx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 11
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 63
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
imul rdi
sbb bl, -94
cmp dx, 96
cmovl rbx, rsi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 80
mov dil, dil
or eax, -1434249782
cmp dl, 14
add al, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 46
add eax, ecx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
add al, -26 # instrumentation
btr eax, 84
mov cx, 82
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
mov rax, -8696242625349627833
xor rbx, rsi
neg ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
