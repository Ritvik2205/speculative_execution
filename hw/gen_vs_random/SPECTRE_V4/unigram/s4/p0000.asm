.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and bl, 76
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
cmovnbe eax, edi
adc ebx, -55
xor bl, al
mov di, dx
add cl, 42 # instrumentation
movsx rax, cl
bts ebx, ebx
movzx ecx, bx
cmovnz eax, edi
imul sil
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], ax
adc dil, 38
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
test dil, -26
bt ebx, 37
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
mul cl
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 50
neg rcx
add rbx, rax
test rdi, rcx
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax]
cmp bl, 12
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 78
bt ecx, edi
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], edx
movzx eax, di
test esi, -2111618709
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
xor dl, dil
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
sub al, al
sbb sil, 24
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rbx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], dx
and cx, -117
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], di
mov edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
