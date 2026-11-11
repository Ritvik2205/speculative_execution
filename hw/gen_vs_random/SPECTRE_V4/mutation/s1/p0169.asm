.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
or di, bx
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rcx, 11
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and ax, 16313
bts ax, 155
and di, -65
mov edi, -1866088512
cmovnle bx, ax
xor bx, 106
sub ax, -1393
and cl, dl
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
add sil, al
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
and rsi, rdx
movzx ecx, sil
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
cmp dx, 58
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
sub cx, -114
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
cmp al, -1
cmp dx, -26
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
add dil, sil
cmovo ax, dx
bswap rdx
sbb ax, 16480
mov al, -114
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
or ax, -26182
or al, al
and cl, -118
movsx edi, di
cmovnle rcx, rax
bt eax, 54
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
sbb cl, dil
test dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
