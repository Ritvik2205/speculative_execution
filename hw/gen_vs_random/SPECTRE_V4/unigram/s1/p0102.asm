.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edx, -950755477
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
cmp dil, bl
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
sub dil, -28
cmp rcx, -121
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
imul bl
and rdx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], dx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 57
adc eax, -3570960
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdi
sub bl, -98
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
or sil, -47
inc dil
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
btr dx, bx
or di, 0b1000000000000000 # instrumentation
bsr cx, di
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
btc rcx, 84
dec dil
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
cmp dl, -82
sub rax, rcx
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 46
cmp ecx, 45
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
cmovl rbx, rcx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
add eax, esi
test bl, bl
cmovo si, di
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
