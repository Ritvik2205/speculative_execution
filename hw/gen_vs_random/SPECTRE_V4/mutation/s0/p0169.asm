.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, 159
or ax, 57
and ax, -23308
bswap rdx
cmp al, 98
and rcx, 11
add dil, sil
and cl, dl
mov al, 82
cmp dx, -1
cmovnle bx, ax
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
movsx edi, di
and rsi, rdx
and di, -65
movzx ecx, sil
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
xor bx, 106
add sil, al
sub ax, -13057
cmovnle rcx, rax
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
cmp dx, -1
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
sub cx, -114
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
mov edi, -1866088512
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
sbb cl, dil
bt eax, 54
or di, bx
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
or al, al
test dil, al
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
sbb ax, 16480
cmovo ax, dx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
and cl, -118
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
