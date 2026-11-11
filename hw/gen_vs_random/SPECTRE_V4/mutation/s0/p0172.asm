.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dx, 11552
sub al, 26
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
mul rbx
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
add eax, 544045319
sub bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
cmovns dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
movsx eax, di
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
xchg cl, cl
xor rax, rcx
adc bl, 97
cmovl bx, cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
sbb edi, 107
mov al, -114
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
neg al
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
imul ecx, esi
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
movsx edi, di
sub rdi, 105
sub edx, 73
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
imul bl
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
add rcx, -61
sub al, 127
cmovnp cx, cx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -103
xchg rdi, rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
add cl, -123 # instrumentation
sbb sil, 33
or eax, 1001462340
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
