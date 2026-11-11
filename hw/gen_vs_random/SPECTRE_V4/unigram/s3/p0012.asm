.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dl
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
bt cx, 31
cmp dx, -67
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
or sil, dil
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
mov al, bl
test al, 52
adc bl, 35
cmp bl, -16
add cl, -118 # instrumentation
sbb rdi, 95
and dil, -23
bts cx, bx
imul sil
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
bt di, 36
sbb cl, 40
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
adc bx, cx
mov ax, 31802
xor ax, 15671
movsx ebx, ax
imul ecx, edi, 79
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
or cx, 0b1000000000000000 # instrumentation
bsr si, cx
mov dl, dl
inc dil
mul cx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 49
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
cmovnp esi, eax
add edi, eax
and bl, al
cmovno ax, si
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
add edi, 66
cmovl bx, si
cmp bl, sil
cmovnbe edi, esi
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], esi
and rcx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
