.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdi]
cmovb edi, edi
cmp eax, -92285311
inc rcx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
add rdi, rcx
and al, -127
and dl, 16
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
or cx, ax
add esi, -5
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
cmovp edx, ebx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 89
test ecx, 74
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
sub rdi, rbx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 29
add bx, 110
or bl, bl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
adc sil, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
sub edx, 65
imul rbx
bt edi, esi
xchg dl, sil
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and bl, 26
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
test cl, -89
cmovnb ebx, ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
add al, 118
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdi], eax
cmovz rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
