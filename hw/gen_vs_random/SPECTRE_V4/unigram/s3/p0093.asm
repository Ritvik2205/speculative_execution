.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 21
and rcx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rcx]
cmovl ebx, edi
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
mov rdx, -3284511739993892328
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
cmp ecx, 29
adc ax, bx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
and al, 82
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 89
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdi], bx
cmovnz rdx, rax
mul rdi
add ax, -9762
and rdi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdi]
adc rbx, rdx
mov rdx, rsi
bt bx, si
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
add dl, -58 # instrumentation
xchg bx, dx
and rcx, 0b1111111111111 # instrumentation
mul cx
mov bl, al
sub rax, 714283065
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
or rax, rdx
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
test bl, bl
mov dx, 22195
bt edi, 135
mov dl, sil
sub sil, -35
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
xchg bx, bx
btr dx, cx
movzx rsi, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
