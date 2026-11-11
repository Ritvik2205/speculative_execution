.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
cmovnb dx, dx
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
bts edi, 167
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
add al, al
mov bl, 4
and rcx, -102
cmovnbe rax, rdi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
sbb bl, 57
cmp cl, 51
add rax, rdx
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor sil, 56
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
xchg esi, edx
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
movzx edx, cl
adc edx, 1
sub rdi, rbx
add dl, sil
movzx edx, bl
mov al, 88
and dil, 96
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
mov ax, 77
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
add sil, al
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 85
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
test sil, bl
imul rdi
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
xor bl, 93
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 57
sub al, 50
btc rbx, 4
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
bts ebx, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
