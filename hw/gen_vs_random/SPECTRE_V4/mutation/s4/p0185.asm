.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
or al, al
mov edi, 412386591
sub ax, -13057
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
movsx edi, di
and rsi, rdx
bts ax, 155
cmovo ax, dx
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
cmp al, 98
and cl, -128
cmovnle rcx, rax
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
cmp dx, 58
add sil, al
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
cmp dx, 58
and rcx, 11
and cl, dl
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
bt eax, 103
sbb cl, dil
bswap rdx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and ax, -4731
mov al, 9
and di, -34
or di, bx
add dil, sil
sbb ax, 18812
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
or ax, 11396
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
movzx ecx, sil
test dil, al
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xor bx, -65
cmovnle bx, ax
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
sub cx, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
