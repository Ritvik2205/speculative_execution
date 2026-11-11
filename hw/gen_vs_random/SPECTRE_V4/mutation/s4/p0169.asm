.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 27604
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
cmp dx, -67
movsx edi, di
mov al, 125
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
bswap rdx
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
movzx ecx, sil
cmovnle rcx, rax
and rcx, 29
bts ax, 159
add dil, sil
cmp dx, 58
and di, -34
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
sbb cl, dil
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
test dil, al
sbb ax, 1843
sub cx, -114
sub ax, 6579
or di, bx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and cl, -128
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
cmovo ax, dx
and cl, dl
xor bx, 59
mov edi, -744634650
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
cmovnle bx, ax
add sil, al
and ax, -14374
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
cmp al, 115
and rsi, rdx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
or al, al
bt eax, 103
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
