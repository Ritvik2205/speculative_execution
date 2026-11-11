.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, dx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
add al, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
cmovno rbx, rsi
sub dl, bl
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
sub al, dl
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], -75
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
xor rdx, 106
cmovb rbx, rbx
and cl, cl
add cl, bl
add eax, 953442933
add al, -32
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
xor al, 23
bt di, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
cmovle rdx, rcx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
cmovo ax, dx
test dil, al
mov edi, 412386591
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
and cl, -128
cmp dx, -67
sbb cl, dil
cmp al, -1
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
xor bx, -65
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
bts ax, 159
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
