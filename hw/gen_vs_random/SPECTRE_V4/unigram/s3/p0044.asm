.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmp al, 114
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, esi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
or esi, edi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
sub edi, 76
cmovnz ebx, edx
imul rdi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
cmovnbe rsi, rcx
bts edi, 167
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 37
add bx, 110
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
sbb cl, cl
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 71
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
add rsi, 88
inc rsi
sub al, dl
cmp dil, dil
test esi, 68
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 41
adc cl, bl
cmp rsi, 8
xor bx, 15
cmovnbe bx, cx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
add dil, 97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 63
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
not ax
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb dx, bx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
sub al, 98
not rdx
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 86
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
test ebx, 1263899340
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
