.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc si, 44
add bl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
sbb sil, 108
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
test bl, cl
and cx, 17
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 60
inc rbx
xor bl, dl
cmp bl, 13
movzx rcx, bx
xchg rdx, rdi
add dil, dil
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 46
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
cmovns bx, ax
btc rcx, rbx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
add dx, -90
cmovnz eax, edx
test rax, -344032571
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 45
cmovp cx, bx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
add dl, -94 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
cmovo edi, ebx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 77
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
xor di, -43
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
add sil, -71 # instrumentation
adc sil, dil
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 67
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
cmovnbe rbx, rdi
sub sil, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
