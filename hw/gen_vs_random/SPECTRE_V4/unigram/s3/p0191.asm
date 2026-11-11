.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], di
sbb rax, 183833426
or di, bx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 38
movzx bx, cl
add bx, 110
add cl, 72 # instrumentation
cmovle cx, bx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
adc ebx, 117
test cl, -89
imul edi, eax, 93
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
xchg rsi, rdx
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], bx
add al, -10 # instrumentation
cmovnbe eax, ebx
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
btc ax, si
test bl, 24
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
movzx esi, al
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
sub al, 98
or dx, 48
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
sub al, bl
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
dec al
movsx ebx, dx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
test dl, dil
not rbx
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
neg al
bts ecx, 24
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
sub dil, -10
movzx rcx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
