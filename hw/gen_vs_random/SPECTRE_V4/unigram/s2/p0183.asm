.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
imul cl
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
sbb al, cl
sub edi, 16
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 51
sbb bl, -94
btc ax, 90
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
dec al
cmovnz edi, ebx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
mov edx, edi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
sbb di, -76
movsx edx, bx
adc al, dil
sbb dil, dil
sub bl, dil
add dl, -99 # instrumentation
not esi
sbb edi, 94
and rdx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdx]
or bl, 77
movzx eax, dil
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 79
sub bl, 17
and rdi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdi]
not cx
and al, -127
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
mov dl, -34
adc ax, ax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
sbb bl, -94
add dil, 82
mul esi
bts eax, 209
cmovnbe si, dx
add cl, -71 # instrumentation
adc cl, dl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
