.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovnle rcx, rax
bts ax, 159
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
xor bx, 106
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
mov al, 124
or ax, 48
test dil, al
movsx edi, di
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
and rcx, -20
cmovo ax, dx
sub cx, -114
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
sbb ax, 16480
cmovnle bx, ax
bswap rdx
cmp dx, -1
cmp dx, -1
sub ax, -1393
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
mov edi, 412386591
and cl, 32
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
or di, bx
sbb cl, dil
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and cl, dl
movzx ecx, sil
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and di, -65
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
add dil, sil
and ax, 25163
add sil, al
bt eax, 54
or al, al
cmp al, 109
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
and rsi, rdx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
