.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
movsx edi, di
sbb cl, dil
add dil, sil
sbb ax, 18812
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, rdx
cmovo ax, dx
cmovnle bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
cmp dx, 13
and di, -34
and cl, 32
add sil, al
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and cl, dl
bt eax, 103
sub ax, 17434
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
bts ax, 159
cmp dx, -1
and rcx, -20
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
test dil, al
and ax, 16313
mov edi, -744634650
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
or ax, -30990
movzx ecx, sil
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
mov al, -71
cmp al, 75
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
or di, bx
cmovnle rcx, rax
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
sub cx, -114
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
or al, al
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
xor bx, 106
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
bswap rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
