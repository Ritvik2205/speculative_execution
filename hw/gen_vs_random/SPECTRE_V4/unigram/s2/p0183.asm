.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
test sil, bl
movsx rdi, dl
or cl, bl
and ax, -23308
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
cmovnp ecx, ecx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rdi
cmp eax, 89
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], 15
adc al, 43
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
bts rdi, rbx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rax]
adc bl, dl
cmovno cx, dx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 83
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
cmp bl, al
cmovno esi, ecx
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 77
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
add al, 66 # instrumentation
cmovp eax, eax
mov bx, 27738
add sil, 87 # instrumentation
cmovz eax, esi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
bts si, 5
cmovb eax, edi
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], edx
xor rdi, -72
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
or dil, -16
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
not ebx
add dl, -58 # instrumentation
xchg di, dx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
mov cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
