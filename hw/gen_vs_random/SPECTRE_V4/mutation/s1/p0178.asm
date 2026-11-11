.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ax, 18812
sub cx, -114
cmp dx, -1
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
mov edi, 412386591
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
movsx edi, di
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, -20
and cl, 32
add sil, al
sbb cl, dil
or di, bx
cmp dx, 58
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
bswap rdx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and cl, dl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
cmovnle bx, ax
bts ax, 155
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
or al, al
mov al, -114
add dil, sil
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
bt eax, 103
movzx ecx, sil
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
and di, -65
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and rsi, rdx
cmovo ax, dx
or ax, 57
xor bx, 59
cmovnle rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
cmp al, 105
and ax, -4731
test dil, al
sub ax, 25338
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
