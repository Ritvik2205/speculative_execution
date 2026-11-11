.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rsi, rdi
cmovs dx, dx
add dil, dil
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 44
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
xchg rcx, rax
adc dl, dl
add al, al
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
xor edx, 75
dec eax
cmovle cx, cx
cmp rsi, 86
not cx
and rdx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdx]
sbb cl, dil
cmovnb ebx, esi
mov cx, 96
add rax, rdx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
test rcx, -2118888343
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 73
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
add cl, -82 # instrumentation
sbb dx, cx
test dil, 77
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
bswap rax
xor sil, al
adc bl, al
test cl, sil
dec rdx
cmp dl, dil
cmovnb edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
cmp dil, dl
not rax
add al, 118
cmovs cx, di
add dx, -90
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
cmp bx, 34
add al, 5
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
