.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and cl, -118
and rcx, 29
bts ax, 155
mov al, 119
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
sub ax, -1393
cmovo ax, dx
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
cmovnle bx, ax
or di, bx
sbb ax, 1843
add dil, sil
and cl, dl
mov edi, -1866088512
add sil, al
and di, -65
and rsi, rdx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
cmp al, 114
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and ax, -12738
cmp dx, 58
cmovnle rcx, rax
bt eax, 54
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
or al, al
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
test dil, al
sbb cl, dil
cmp dx, 13
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
movzx ecx, sil
xor bx, 59
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
bswap rdx
sub cx, -114
movsx edi, di
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
or ax, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
