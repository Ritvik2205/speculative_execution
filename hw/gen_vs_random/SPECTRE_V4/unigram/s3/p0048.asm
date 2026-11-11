.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
adc sil, 88
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
dec ebx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 79
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and bl, bl
cmp edi, 3
bts cx, 135
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
add dl, 29 # instrumentation
cmovnl rax, rdx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 32
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
not bl
xor eax, -48271836
xor dl, al
add cl, -123 # instrumentation
sbb dl, 95
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
mov al, 90
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
sub al, dl
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 73
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 21
cmp dil, al
cmovnp rcx, rsi
sub rdi, -34
cmovbe rax, rsi
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 53
neg dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
