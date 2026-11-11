.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, al
or di, bx
or ax, 28571
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and cl, dl
cmp dx, -26
movsx edi, di
cmovnle bx, ax
and rcx, -20
sub ax, 23
cmovnle rcx, rax
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add dil, sil
mov al, 119
bt eax, 54
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
sbb ax, 16480
and ax, 26513
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and di, -65
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
cmovo ax, dx
test dil, al
mov edi, -1866088512
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bswap rdx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
movzx ecx, sil
and rsi, rdx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and cl, -118
cmp dx, -26
sbb cl, dil
cmp al, 114
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
xor bx, -65
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
bts ax, 155
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
sub cx, -114
or al, al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
