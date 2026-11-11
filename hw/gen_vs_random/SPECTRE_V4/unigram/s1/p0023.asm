.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dx, 2
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
movsx si, al
sub dl, sil
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
adc al, 116
xor bx, -65
adc dl, 24
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
xor dl, -66
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], cx
imul rdx, rax
mov cl, dil
bt rsi, rax
test dl, -102
add sil, dil
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rcx
mov dil, 37
or cl, bl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
or cl, al
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 17
btc ebx, 27
mul al
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
xor bl, 27
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 47
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 69
cmp eax, 1521417271
test esi, -2111618709
test al, dl
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
neg ebx
adc rdx, rdi
cmovnbe esi, edx
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor cl, -73
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sbb rdi, rax
movzx eax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
