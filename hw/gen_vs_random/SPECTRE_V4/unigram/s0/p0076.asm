.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
sub rcx, 43
add cx, 59
or bl, sil
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
adc al, sil
test bl, 24
bts si, 30
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
mov dl, -34
test eax, -544019457
cmovnle edx, ecx
sub cl, 116
test eax, 1880179600
cmovnle di, di
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
add dl, cl
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
imul dx, di
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
xor dil, cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
mov sil, sil
cmp rdi, 67
xor al, -2
imul rdx, rcx
test rdx, 7
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
test dil, 6
sub al, cl
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax], 44
add rcx, rbx
add dil, 16
imul cl
xchg ebx, ecx
or ax, si
mov rdi, 58
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 92
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test ebx, 1263899340
add al, -26 # instrumentation
btr eax, 2
bts edx, 14
test al, dil
add cl, 122 # instrumentation
cmovz rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
