.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, di
cmovnle rcx, rax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
cmovnle bx, ax
or di, bx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
add dil, sil
cmp al, -1
sub ax, 24426
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bswap rdx
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
sbb cl, dil
cmp dx, 13
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
bts ax, 159
or ax, 48
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
add sil, al
movzx ecx, sil
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and cl, 32
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
mov al, -114
sub cx, -114
and di, -65
and ax, -14374
or al, al
cmp dx, -26
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
mov edi, -744634650
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
sbb ax, -30070
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
xor bx, 106
cmovo ax, dx
test dil, al
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
bt eax, 54
and rcx, 29
and rsi, rdx
and cl, dl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
