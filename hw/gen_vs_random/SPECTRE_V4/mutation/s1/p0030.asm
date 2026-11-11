.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, -34
add sil, al
cmp dx, 13
and ax, -603
movzx ecx, sil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
cmovnle bx, ax
bts ax, 155
cmovo ax, dx
sub ax, 8246
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
test dil, al
mov al, 125
add dil, sil
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
mov edi, -744634650
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
sbb ax, 75
sub cx, -114
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
bt eax, 103
or di, bx
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
sbb cl, dil
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
cmovnle rcx, rax
bswap rdx
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
xor bx, 59
and rsi, rdx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
or ax, 57
movsx edi, di
cmp dx, 58
and cl, -128
and cl, dl
and rcx, 29
cmp al, -44
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
or al, al
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
