.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dx, 58
sbb cl, dil
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rsi, rdx
cmp dx, 58
cmovnle rcx, rax
sbb ax, 18812
bts ax, 155
movzx ecx, sil
or al, al
and rcx, 11
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
cmovo ax, dx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
mov al, 125
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
and cl, -118
mov edi, 412386591
cmp al, -44
or ax, 7381
and ax, 16313
bt eax, 54
sub cx, -114
and di, -65
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
or di, bx
add dil, sil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bswap rdx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
movsx edi, di
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
add sil, al
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and cl, dl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
sub ax, 24426
xor bx, 59
cmovnle bx, ax
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
test dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
