.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
mov dl, -34
and ax, 35
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
dec dl
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
dec cl
mov al, sil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 50
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and eax, -37
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
test bl, 24
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
test dil, 36
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
cmovs rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
cmovnb esi, ebx
test bl, dl
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
sub eax, 2030845821
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
add rbx, 76
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and dl, al
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
or si, dx
cmovnl rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
cmp bl, 13
cmp ax, -15031
add ax, -13169
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 88
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
